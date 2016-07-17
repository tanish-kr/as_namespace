# coding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

group :red_green_refactor, halt_on_fail: true do

  guard :rspec, cmd: "bundle exec rspec" do
    watch(%r{lib/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{spec/.+_spec\.rb$})
  end

  guard :yard, server: false, stdout: '/dev/null' do
    watch("README.md")
    watch(%r{lib/(.+)\.rb$})
    watch(%r{lib/(.+)\.rake$})
  end

  guard :rubocop, all_on_start: false, keep_failed: false, cli: ["--format", "clang", "-l"] do
    watch(%r{lib/(.+)\.rb$})
    watch(%r{spec/.+_spec\.rb$})
    watch(%r{lib/(.+)\.rake$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end

end

guard :bundler, cmd: "bundle" do
  watch("as_namespace.gemspec")
end
