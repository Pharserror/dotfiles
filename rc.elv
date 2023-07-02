set paths = [/usr/bin /bin /opt/homebrew/bin /usr/local/bin]

use asdf _asdf; var asdf~ = $_asdf:asdf~

set E:EDITOR = emacs
set edit:completion:arg-completer[asdf] = $_asdf:arg-completer~
set edit:prompt = {
  tilde-abbr $pwd
  styled ' > ' bright-red
}

## GIT
#
fn ga {|@rest| e:git add $rest[0] }
fn gb {|@rest|
  if (eq $rest []) {
    e:git branch
  } else {
    e:git branch $rest[0] $rest[1]
  }
}
fn gc {|branch| e:git checkout $branch }
fn gcm {|comment| e:git commit -m $comment }
fn gcp { e:git cherry-pick }
fn gd { e:git diff }
fn gm { e:git merge }
fn gp { e:git pull }
fn gpb { e:git pull (git config --get remote.origin.url) (git rev-parse --abbrev-ref HEAD) }
fn gpo { e:git push origin (git rev-parse --abbrev-ref HEAD) }
fn grh { e:git reset --hard HEAD~1 }
fn grm { e:git rm }
fn gs { e:git status }
fn gum { e:git reset --merge ORIG_HEAD }
fn gbc {|branch| git branch $branch; git checkout $branch }