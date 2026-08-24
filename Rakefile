require 'rubygems'
require 'rake'
require 'rdoc'
require 'date'
require 'yaml'
require 'tmpdir'
require 'jekyll'

desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end

desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    message = "Site updated at #{Time.now.utc}"
    # Stage new posts too; `git commit -am` silently skipped untracked files and
    # the later master-branch cleanup could delete them after publishing.
    system "git add -A"
    system "git commit -m #{message.shellescape}"
    system "git push origin gh-pages"
    system "mv _site/* #{tmp}"
    system "mv CNAME #{tmp}"
    system "git checkout -B master"
    system "rm -rf *"
    system "mv #{tmp}/* ."
    system "touch .nojekyll"
    system "git add -A"
    system "git commit -m #{message.shellescape}"
    system "git push origin master --force"
    system "ipfs add -r ."
    system "git checkout gh-pages"
    system "echo yolo"
  end
end

task :default => :publish
