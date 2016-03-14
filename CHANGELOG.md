# Changelog

## v1.3.10 (2016-03-12)

* Fix: Actually allow HTML tags for Pushover.
* Fix: PlexPy not restarting on Windows if there is a space in the folder path.
* Fix: Reconnect websocket when changing PMS SSL setting.
* Fix: Datatables not loading when view_offset or duration is blank.
* Fix: Bug when checking the PMS version in the settings.
* Fix: Auto-refreshing of log tables.
* Fix: Logging of IPv6 addresses. (PMS version >0.9.14 only.)
* Fix: Hide days selection from the Play Totals graph page.
* Fix: PlexPy overwriting user's own SSL certificate/key.
* Fix: Multiple watched notifications when using websocket.
* Fix: Some missing python library imports.
* Fix: Some typos in settings and PlexWatch importer.
* New: Ability to get notified of PMS updates.
* New: Ability to disable the link to Plex Web with Facebook notifications and use IMDB, TVDB, TMDb, or Last.fm instead.
* New: Ability to reset Imgur poster url from the info page if the poster is changed.
* New: Tooltips on the current activity progress bars.
* New: Side scrolling of Recently Added/Recently Played items.
* New: Document all date/time format options.
* New: Button to clear notification logs.
* New: Customizable backup, cache, and log directories.
* Change: Retry writing sessions to history if it fails, so sessions don't get lost. (Activity pinger only, not availble for websocket.)
* Change: Save any unknown sessions to the "Local" user.
* Change: History table modal is filtered depending on which graph series is clicked.
* Change: Revert back to saving the state of datatables (search, sorting, entries per page, etc.).
* Change: Newlines are not longer stripped from notification text which allows for finer control of how notifications look.
* Change: Updated FreeNAS/FreeBSD init scripts. (Must have updated jails.) (Thanks @chiviak)


## v1.3.9 (2016-02-21)

* Fix: Recently added notification not sent to all notification agents.
* New: Pushover HTML support. (Thanks @elseym)


## v1.3.8 (2016-02-21)

* Fix: Regression unable to clear HTTP password.
* Fix: Remove media tags from script arguments for server notifications.
* Fix: Encode poster titles to UTF-8 for Imgur upload.
* Fix: Allow notifications to send without poster if Imgur upload fails.
* New: Notification Logs table in the Logs tab.
* New: Toggle in settings to enable posters in notifications. (Disabled by default.)
* Change: Save Imgur poster URL to database so upload is not needed every time.
* Change: Notify log in database to log each event as a separate entry.
* Change: Monitor remote access is unchecked if remote access is disabled on server.


## v1.3.7 (2016-02-20)

* Fix: Verifying server with SSL enabled.
* Fix: Regression where {stream_duration} reported as 0.
* Fix: Video metadata flags showing up for track info.
* Fix: Custom library icons not applied to Library Statistics.
* Fix: Typos in the Web UI.
* New: ETA to Current Activity overlay.
* New: Total duration to Libraries and Users tables.
* New: {machine_id} to notification options.
* New: IMDB, TVDB, TMDb, Last.fm, and Trackt IDs/URLs to notification options.
* New: {poster_url} to notification options using Imgur.
* New: Poster and link for Facebook notifications.
* New: Log javascript errors from the Web UI.
* New: Configuration and Scheduler info to the settings page.
* New: Schedule background task to backup the PlexPy database.
* New: URL anonymizer for external links.
* New: Plex Media Scanner log file to Log viewer.
* New: API v2 (sill very experimental). (Thanks @Hellowlol)
* Change: Allow secure websocket connections.
* Change: History grouping now accounts for the view offset.
* Change: Subject line can be toggled off for Facebook, Slack, Telegram, and Twitter.
* Change: Create self-signed SSL certificates when enabling HTTPS.
* Change: Revert homepage "Last Played" to "Last Watched".
* Change: Disable monitor remote access checkbox if remote access is not enabled on the PMS.
* Change: Disable IP logging checkbox if PMS version is 0.9.14 or greater.


## v1.3.6 (2016-02-03)

* Fix: Regression where {duration} not reported in minutes.
* Fix: Proper daemonizing in FreeBSD and FreeNAS init scripts.
* Change: Update readme documentation.


## v1.3.5 (2016-02-02)

* Fix: Removing unique constraints from database.
* Fix: Unable to expand media info table when missing "Added At" date.
* Fix: Server verification for unpublished servers.
* Fix: Updating PMS identifier for server change.
* New: {stream_time}, {remaining_time}, and {progress_time} to notification options.
* New: Powershell script support. (Thanks @Hellowlol)
* New: Method to delete duplicate libraries.
* Change: Daemonize before running start up tasks.


## v1.3.4 (2016-01-29)

* Fix: Activity checker not starting with library update (history not logging).
* Fix: Libraries duplicated in database.
* Fix: Buffer notifications even when disabled when using websockets.
* Fix: Libraries and Users lists not refreshing.
* Fix: Server verification in settings.
* Fix: Empty libraries not added to database.
* New: Unique identifiers to notification options.
* Remove: Requirement of media type toggles for recently added notifications.
* Remove: Built in Twitter key and secret.
* Change: Unnecessary quoting of script arguments.
* Change: Facebook notification instructions.


## v1.3.3 (2016-01-26)

* Fix: Plays by Month graph not loading.
* Change: Disable caching for datatables.
* Change: Improved updating library data in the database again.


## v1.3.2 (2016-01-24)

* Fix: 'datestamp' and 'timestamp' for server notifications.
* Change: New method for updating library data in database.


## v1.3.1 (2016-01-23)

* Fix: Notifiers authorization popups for reverse proxies.
* Fix: Empty brackets in titles on tables.
* Fix: Star rating overlapping text.
* Fix: Unable to startup when library refresh fails.
* Fix: Unable to parse 'datestamp' and 'timestamp' format.
* Change: Rename "Last Watched" to "Last Played".
* Change: More descriptive libraries updating message.


## v1.3.0 (2016-01-23)

* New: Brand new Libraries section.
* New: Lots of new library statistics.
* New: Media info table for libraries.
* New: Web app for Android and iOS. (Thanks @zobe123)
* New: Slack notification agent. (Thanks @richipargo)
* New: Facebook notification agent.
* New: Custom script notification agent. (Thanks @Hellowlol)
* New: Custom "From Name" to email notification agent.
* New: Ability to test notifications / send custom one-off notifications.
* New: 'datestamp' and 'timestamp' notification options.
* New: More concurrent stream statistics.
* New: Media info flags on the info pages.
* New: Ability to fix broken metadata if the item has been moved in Plex.
* New: Ability to rearrange the homepage statistics cards.
* New: CentOS startup script (Thanks @PHoSawyer)
* Fix: Server name blank after first run wizard.
* Fix: Incorrect duration for grouped home stats.
* Fix: Allow SSL when verifying server in settings.
* Fix: Metadata for grouped recently added notifications.
* Fix: Unable to access settings with missing changelog file.
* Fix: Month name localization on play totals graphs.
* Fix: Get new PMS identifier when changing servers.
* Fix: Websocket log spam when there is no active session.
* Fix: Logs and cache folder not created in the data directory.
* Fix: Title links on sync table.
* Fix: Other various minor bugs and graphical glitches.
* Change: Prettier thumbnail popovers on tables.
* Change: Star ratings to use css/font-awesome.
* Change: More detailed logging info to warnings and errors.
* Change: Better PlexPy process restart handling (Thanks @jackwilsdon)
* Change: Massive behind the scenes code cleanup.
* Remove: Built in Pushover API token (User's own API token is now required).


## v1.2.16 (2015-12-22)

* Fix Most Concurrent stream stat for emtpy databases
* Change logs to 50 lines by default


## v1.2.15 (2015-12-20)

* Fix navbar covering current activity on smaller screens.
* Fix metadata for grouped recently added notifications.
* Fix Growl notification agent not working.
* Change graph days selection.
* Change watch statistics to match table history grouping.
* Add automatic discovery of Pushbullet devices.
* Add Most Concurrent Streams watch statistic.
* Add precentage to current activity progress bars.
* Add a bunch of stream details to notification options.
* Add notification for Plex Remote Access/Plex Media Server back up.
* Add CC/BCC and multiple recipients to email notification agent.
* Add total watch time to history table footer.


## v1.2.14 (2015-12-07)

* Fix regression with PlexWatch db importer and buffer warnings.


## v1.2.13 (2015-12-06)

* Fix match newlines between tags in notification text.
* Fix current activity not showing on PMS 0.9.12.


## v1.2.12 (2015-12-06)

* Fix for "too many open files" error.


## v1.2.11 (2015-12-06)

* Fix more regressions (sorry).


## v1.2.10 (2015-12-06)

* Fix broken count graphs regression.


## v1.2.9 (2015-12-06)

* Fix and improve text sanitization.


## v1.2.8 (2015-12-06)

* Fix sanitize player names
* Fix recently added notification delay
* Fix recently added metadata queries
* Fix multiple lines in notification body text
* Fix UTF-8 encoding in Prowl notifications subject line
* Change to only log IPv4 addresses
* Add global toggle for recently added notifcations
* Add feature to delete users
* Add channel support for Telegram notification agent
* Add icon for Apple tvOS
* Add icon for Microsoft Edge


## v1.2.7 (2015-11-27)

* Fix IP address option in notifications


## v1.2.6 (2015-11-27)

* Fixes for IP logging in PMS < 0.9.14.x.
* Fix issue in plexWatch importer when trying to import item with no ratingKey.


## v1.2.5 (2015-11-25)

* Add video_decision and audio_decision to notification options
* Fix IP address logging
* Fix log spam if notifications disabled 


## v1.2.4 (2015-11-24)

* Add filtering by media type in the history table
* Add IFTTT notification agent
* Add Telegram notification agent
* Add notifications for recently added media
* Add notifications for server down and remote access down
* Add more metadata to notifications options
* Add IP address to notification options (for PMS 0.9.14 and above)
* Add server uptime to notification options
* Add IP address to current activity
* Add IPv6 address logging
* Add PMS server name to the page title
* Fix bug in "Last Watched" statistic
* Fix bug in search query
* Fix bug on user pages for usernames with single quotes
* Fix name for new Plex Media Center
* Fix Pushover notifications with unicode characters
* Fix bug with showing old usernames in datatables
* Fix bug with "Please verify your server" in settings
* Change IP lookup provider
* Change notifications custom body text to larger text box
* Change movie/tv logging and notifications into individual options


## v1.2.3 (2015-10-18)

* Added "remaining time" as notification substitution.
* Fix bug on home stats cards.
* Fix visual bug on user page.


## v1.2.2 (2015-10-12)

* Add server discovery on first run.
* Add column to tables for Platform.
* Add link to top level breadcrumbs on info pages.
* Add ability to change notification sounds for Pushover and Boxcar.
* Show watched percentage tooltip on progress column in history tables. 
* More logging in event an http request fails.
* Code cleanups and other fixes.
* Fix ordering on sync table.
* Fix bug on home stats cards.
* Fix bug on activity pane where music details were not shown.


## v1.2.1 (2015-09-29)

* Fix for possible issue when paused_counter is null.


## v1.2.0 (2015-09-29)

* Added option to group consecutive plays in the history tables.
* Added option for websocket monitoring (still slightly experimental and disabled by default).
* Added global search option (searches your Plex library).
* Added option to update any items that may have had their rating keys changed.
* Added option to disable consecutive notifications. 
* Some visual tweaks and fixes.
* Fix bug where monitoring wouldn't start up after first run.
* Fix bug showing incorrect transcode decisions for music tracks on history tables.


## v1.1.10 (2015-09-20)

* Added dedicated settings section for home stats configuration with ability to show/hide selected stats and sections.
* Added support for Twitter notifications.
* Only show music in graphs if music logging is enabled.
* The monitoring ignore interval now excludes paused time. 
* Fix display bug on activity panel which incorrectly reported transcoding sometimes.
* Fix bug with Email notification TLS checkbox when it would be disabled by changing any other settings afterwards.
* Fix issue on some Python releases where the webbrowser library isn't included.


## v1.1.9 (2015-09-14)

* Another JonnyWong release. I'm going to stop thanking you now ;)
* Add music plays to graphs.
* Add info pages for music items.
* Add music to user recently watched items.
* Add photo views to Activity pane (photos are not logged).
* Fix token validation message on Settings page.
* Fix some "Mystery" platform names.
* Fix paused time be counted for graph data.
* Other small bug fixes.


## v1.1.8 (2015-09-09)

* Add platform images for Windows devices. Thanks @JonnyWong.
* Add click-through to PlexWeb preplay page from info page. Thanks @JonnyWong. 
* Fix broken delete option on info pages. Thanks @JonnyWong.
* Fix tagline bug in PlexWatch db import tool.
* Fix home stats text overflow bug. Thanks @JonnyWong.


## v1.1.7 (2015-09-07)

* Show tagline in info screens for movies. Thanks @JonnyWong.
* Add play/pause/buffer icon to activity pane. Thanks @JonnyWong.
* Add transcoder info in activity pane info. Thanks @JonnyWong.
* Show transcoder progress on activity progress bar. Thanks @JonnyWong.
* Fix bug where custom notification strings would be ignored if unicode characters were present.
* Fix text overflow issue on home stats cards. Thanks @JonnyWong.
* Fix regression with user friendly name change input in edit screen. Thanks @JonnyWong.


## v1.1.6 (2015-09-06)

* Home stats cards are now expandable to show multiple items. Configurable in settings. Thanks @JonnyWong.
* Completely redesigned media info pages. Thanks @JonnyWong.
* Redesigned activity pane to match Plex Web more closely. Thanks @JonnyWong.
* New Library stats on home page, shows total item counts per library. Thanks @JonnyWong.
* New last watched card in home stats. Shows last watched items. Thanks @JonnyWong.
* Improved some layout issues on mobile devices. Thanks @JonnyWong.
* Fixed issue where some clip/channel items are reported as episodes and causing exceptions.
* Many styling improvements and fixes. Thanks @JonnyWong.
* Fixed incorrect sort on home stats platform count by duration. Thanks @JonnyWong.
* Fix issue where user refresh would continually be called as "Local" user didn't exist in database.
* Fixed styling on graph stream modal. Thanks @JonnyWong.
* Fixed some issues with users page editing. Thanks @JonnyWong.
* Fix error page when clicking through to an item that no longer exists.


## v1.1.5 (2015-08-27)

* Fix git tag being one release behind.


## v1.1.4 (2015-08-26)

* User info is now editable from the users table. Thanks @JonnyWong.
* Improved delete mode for history pages - able to multi-select now. Thanks @JonnyWong.
* Improved image quality on tooltip images.
* More styling improvements and fixes on user and info pages. Thanks @JonnyWong.
* Added some user submitted systemd init scripts. Thanks @malle-pietje and @artbird309.
* Fixed some background operations when saving settings.
* Fix max width restricting home stats to 1600px.
* Fix stream duration parameter for notifications when paused counter is null.


## v1.1.3 (2015-08-22)

* Show human readable version info and this cool changelog in Settings -> General.
* Add a "delete" mode to the history tables. Toggle it to show a delete button next to each history item.
* Two digit season and episode numbers for custom notification messages. Thanks @JonnyWong.
* New FreeNAS init script. Thanks @JonnyWong.
* Lots of styling improvements! Thanks @JonnyWong.
* Graph page remembers last selected options. Thanks @JonnyWong.
* New Popular movie homepage stats. Thanks @JonnyWong.
* Add option for duration vs play count on home stats. (Settings -> Extra Settings). Thanks @JonnyWong.
* Clean up media info pages. Don't show metadata that is missing. Thanks @JonnyWong.
* Add clear button to search inputs. Thanks @JonnyWong.
* New columns on Users list. Thanks @JonnyWong.
* New stream duration option for custom notification messages. Thanks @JonnyWong.
* Rad new tooltips on the history pages. Thanks @JonnyWong.
* And a lot of small visual changes and fixes. Thanks @JonnyWong.
* Fixed IP address modal on user history page.
* Fixed "invalid date" showing on monthly plays graph.

## v1.1.2 (2015-08-16)

* Fix bug where user refresh would fail under certain circumstances.

## v1.1.1 (2015-08-15)

* Added Most watched movie for home stats. Thanks @jroyal.
* Added TV show title to recently added text. Thanks @jroyal.
* Fix bug with buffer warnings where notification would trigger continuously after first trigger.
* Fix bug where custom avatar URL would get reset on every user refresh.

## v1.1.0 (2015-08-15)

* Add option to disable all history logging per user.
* Add option to change user avatar URL. Thanks @jroyal.
* Show all users on users table even if they don't yet have history.
* Add option to change time frame of statistics on home page (Settings -> Extra Settings). Thanks @jroyal.
* Add 7 day period for graphs. Thanks @jroyal.
* Add pause, resume and buffer warning notification options.
* Add fine tuning settings for buffer warning triggers.
* Fix issue with SSL cert verification bypass when method doesn't exist (depends on Python version).
* Fix bug on home stats which wouldn't update unless a TV show was first logged.
* Fix alignment of bands on daily graphs which highlight weekends.
* Fix behaviour of close button on update popup, will now stay closed for an hour after clicking close.
* Fix some styling niggles.

## v1.0.1 (2015-08-13)

* Allow SSL certificate check override for certain systems with bad CA stores.
* Fix typo on graphs page causing date selection to break on Safari.

## v1.0 (2015-08-11)

* First release