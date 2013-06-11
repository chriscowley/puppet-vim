class vim {
	include vim::install
}

class vim::install {
    case  $osfamily {
        'RedHat': {
            package { "vim-enhanced": ensure => latest }
        }
        'Debian': {
            package { "vim-full": ensure => latest }
        }
    }
}

