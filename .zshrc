      #appends: []
      #dispatchesEvents: array:2 [
        "creating" => "App\Events\OrderCreating"
        "created" => "App\Events\OrderCreated"
      ]
      #observables: []
      #relations: []
      #touches: []
      +timestamps: true
      +usesUniqueIds: false
      #hidden: []
      #visible: []
      #fillable: array:13 [
        0 => "order_number"
        1 => "amount"
        2 => "status"
        3 => "cancelled"
        4 => "history"
        5 => "last_status_update"
        6 => "tenant_delivery_date"
        7 => "expected_approval_date"
        8 => "expected_activation_date"
        9 => "internal_notes"
        10 => "coupon_code_id"
        11 => "invoice_origin"
        12 => "invoice_id"
      ]
      #guarded: array:1 [
        0 => "*"
      ]
      #oldAttributes: []
      #activitylogOptions: ? ?Spatie\Activitylog\LogOptions
      +enableLoggingModelsEvents: true
    }
  ]
  #escapeWhenCastingToString: false
} // app/Console/Commands/Order/SendLevelOneOrderReminders.php:29
➜  rentupp git:(REN-333-optimize-reminders) ✗ a app:send-level-one-order-reminders
Sending 3 reminders
3 // app/Console/Commands/Order/SendLevelOneOrderReminders.php:29
➜  rentupp git:(REN-333-optimize-reminders) ✗ a app:send-level-one-order-reminders
Sending 1 reminders
1 // app/Console/Commands/Order/SendLevelOneOrderReminders.php:34
➜  rentupp git:(REN-333-optimize-reminders) ✗ clear
➜  rentupp git:(REN-333-optimize-reminders) ✗ git status
On branch REN-333-optimize-reminders
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
# This is Git's per-user configuration file.
  (use "git restore <file>..." to discard changes in working directory)
	modified:   _ide_helper.php
	modified:   app/Console/Commands/Order/SendLevelOneOrderReminders.php
	modified:   database/factories/OrderStatusFeedbackFactory.php
	modified:   tests/Feature/Order/OrderStatusUpdateTest.php

no changes added to commit (use "git add" and/or "git commit -a")
➜  rentupp git:(REN-333-optimize-reminders) ✗ git add .
➜  rentupp git:(REN-333-optimize-reminders) ✗ git commit -am "Fix REN-333: WIP"
[REN-333-optimize-reminders 697c37d] Fix REN-333: WIP
 4 files changed, 19166 insertions(+), 25503 deletions(-)
➜  rentupp git:(REN-333-optimize-reminders) git add .
➜  rentupp git:(REN-333-optimize-reminders) ✗ git commit -am "Fix REN-333: WIP"
[REN-333-optimize-reminders 084a0a2] Fix REN-333: WIP
 2 files changed, 6 insertions(+), 6 deletions(-)
➜  rentupp git:(REN-333-optimize-reminders)
➜  rentupp git:(REN-333-optimize-reminders) ✗ git status
On branch REN-333-optimize-reminders
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   app/Console/Commands/Order/SendLevelTwoOrderReminders.php
	modified:   tests/Feature/Order/OrderStatusUpdateTest.php

# This is Git's per-user configuration file.
no changes added to commit (use "git add" and/or "git commit -a")
➜  rentupp git:(REN-333-optimize-reminders) ✗ git commit -am "Fix REN-333: WIP"
# This is Git's per-user configuration file.
[REN-333-optimize-reminders 791eb97] Fix REN-333: WIP
 2 files changed, 66 insertions(+), 8 deletions(-)
➜  rentupp git:(REN-333-optimize-reminders) vim ~/.gitconfig
➜  rentupp git:(REN-333-optimize-reminders) ga
Nothing specified, nothing added.
hint: Maybe you wanted to say 'git add .'?
hint: Turn this message off by running
hint: "git config advice.addEmptyPathspec false"
➜  rentupp git:(REN-333-optimize-reminders) ga .
➜  rentupp git:(REN-333-optimize-reminders) gcf
➜  rentupp git:(REN-333-optimize-reminders) gst
On branch REN-333-optimize-reminders
nothing to commit, working tree clean
➜  rentupp git:(REN-333-optimize-reminders) git log --format='%aN <%aE>' | grep -v 'users.noreply.github.com' | sort -u --ignore-case
Lütfiye Turan <luetti@MBP-von-Lutfiye.fritz.box>
Niclas <niclastimmdev@gmail.com>
Niclas Timm <niclastimmdev@gmail.com>
➜  rentupp git:(REN-333-optimize-reminders) vim ~/.gitconfig
# This is Git's per-user configuration file.
➜  rentupp git:(REN-333-optimize-reminders) git authors
Lütfiye Turan <luetti@MBP-von-Lutfiye.fritz.box>
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
"~/.zshrc" 124L, 4649B
