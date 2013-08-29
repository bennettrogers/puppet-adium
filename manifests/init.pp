# Public: Install Adium to /Applications
#
# Examples
#
#  include adium
class adium {
  package { 'Adium':
    provider => 'appdmg',
    source   => 'http://download.adium.im/Adium_1.5.6.dmg',
  }

  # Install plugins, if any
  file { "/Users/${::boxen_user}/Library/Application Support/Adium 2.0":
    source  => "puppet:///adium/plugins",
    recurse => true,
  }
}
