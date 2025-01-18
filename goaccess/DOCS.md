# Home Assistant Add-on: GoAccess

[GoAccess](https://goaccess.io) is an open source **real-time web log analyzer** and interactive viewer.

## Installation

Follow these steps to get the add-on installed on your system:

1. Click here:

   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FTECH7Fox%2Fgoaccess-hass-addons)

1. Scroll down the page to find the new repository, and click in the new add-on named **_GoAccess_**.
1. Click in the **_INSTALL_** button.

## Using

1. Start the add-on to create the default `goaccess/conf` configuration file which will be located in the `addon_configs/VERSION_goaccess` folder. You need to add your log files to the configuration file.
Go to [Configuring GoAccess](#configuring-goaccess) for more info on how to configure GoAccess.
2. Start the add-on again by clicking in the **_START_** button. You should now be able to access the GoAccess web interface by clicking in the **_OPEN WEB UI_** button.

## Configuring GoAccess

The add-on uses the `goaccess.conf` file located in the `addon_configs` folder to configure GoAccess. You can modify this file to suit your needs.

Here is a example for a Nginx Proxy Manager log file:
```conf
log-file /addon_configs/local_nginxproxymanager/logs/proxy-host-1_access.log
log-file /addon_configs/local_nginxproxymanager/logs/proxy-host-2_access.log
```

You can add as many log files as you want.

By default, GoAccess is configured for the Nginx Proxy Manager log format. You can change the log format in the `goaccess.conf` file. Search for the `log-format` option and change it to the desired format.

**Note**: _Remember to restart the add-on when the GoAccess configuration has changed._

## GeoIP

The add-on includes the free [DB IP](https://db-ip.com) database for GeoIP lookups, and is enabled by default.

To use your own database or update the existing one, you can add the mmdb files to the add-on configuration folder in `/addon_configs/` and update the `goaccess.conf` file to point to the new databases. You can download the latest version at [db-ip.com](https://db-ip.com/db/lite.php).

## Troubleshooting

If you have issues with the add-on, please check the [issue tracker](https://github.com/TECH7Fox/goaccess-hass-addons/issues) for similar issues before creating a new one.
