```ruby
# Have an easy way to get the root of the project
def root_path
  Dir.pwd.sub(/.*\Kfastlane/, '').sub(/.*\Kandroid/, '').sub(/.*\Kios/, '').sub(/.*\K\/\//, '')
end

# Have an easy way to run flutter tasks on the root of the project
lane :sh_on_root do |options|
  command = options[:command]
  sh("cd #{root_path} && #{command}")
end

# Tasks to be reused on each platform flow
lane :fetch_dependencies do
  sh_on_root(command: "flutter pub get")
end

default_platform(:android)

platform :android do
  desc "Build [Dev] APK file"
  private_lane :build_dev_apk do |options|

    build_number = options[:build_number]
    build_name = options[:build_name]
    # Reuse parent fastfile tasks
    sh_on_root(command: "flutter clean")
    fetch_dependencies
    # lint
    sh_on_root(command: "flutter build apk --build-name=#{build_name} --build-number=#{build_number} -t lib/main.dart --release --no-sound-null-safety")
  end

  desc "Build APK file vs deploy DEV app to App distribution"
  lane :deploy_dev_app_to_firebase do |options|


    build_number = options[:build_number]
    build_name = options[:build_name]
    release_note = "Test Deploy"

    build_dev_apk(build_number:build_number, build_name:build_name)
    

    firebase_app_distribution(
      app: "1:623458129219:android:82c945325163369a984bf6",
      firebase_cli_token:'1//0gAdo2QgpwDUKCgYIARAAGBASNwF-L9IrSqaoWGhdVLM_rCQvL_OrkCTr3VFCehnfipx3RvCAEflu22iqR9OmKNTBbKAl4Duy8-M',
      testers:'vinh.hx@hikotech.io',
      groups: "HIKO-Tester",
      release_notes: release_note,
      android_artifact_path: "#{root_path}/build/app/outputs/flutter-apk/app-release.apk"
    )
  end
end
```