# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | no
Instrumentation apps ("realistic") | no
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | n
Automated deploy to package manager | y
Automated deploy to Github | n

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | n
Custom POST path | n
Custom connection timeout | n
Custom request headers | n
Custom NetworkConnection/HttpClient | n
Custom max payload size (to deprecate?!) | yes
Custom batch size | y
EventStore has maximum limit | y | can set queue size
Events are buffered in memory or db | yes
Custom EventStore | n
Provide stop retry for HTTP error codes | no
Custom threadpool size | n
Request callback (event sending callback) | y
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | y
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | n
Autotracking application entity | n
Autotracking platform entity | no
Autotracking screenView event | n
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | n
GDPR entity configuration | no
Global contexts | yes
Autotracking page entity | n
Autotracking geolocation entity | n
Autotracking deeplink entity | n
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | n
Foreground/background timeout | n/a
onSessionUpdate callback | n/a
Foreground/background callbacks | n/a

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | y
Set custom userID | y
Set timezone | y
Set language | y
Set networkUserid | y
Set domainUserid | y
Set ipAddress | y
Set screen resolution | y
Set screen viewport | y
Set colour depth | y
Set domain sessionId | n
Set domain sessionIndex | n
Set user fingerprint | n

# EVENT LOSS CALLBACKS
Sending failure callback | n
Drop events callback | n

# FEATURES
Snowplow API | no
Remote configuration | no
Multiple tracker instances | n
Track an event on multiple trackers at once | n
Event_id and timestamp not overridable | y
True_timestamp available | y
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | n
Emitter pausable | n
Flush events command | y
Flush at regular time intervals | n
Start new session command | n/a
Event index counter for session | n/a
Timestamp on session | n/a
Asynchronous event sending | yes
Event sending retry | y
Plug-in architecture | no
Events are different classes | n
Events are different functions | y
Session pausable | n/a
Media tracking | n
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | n
Structured event | yes
Page view event | yes
Mobile screen view event | no
Snowplow screen view event | no
eCommerce events (old) | yes
Timing event | no
Page ping event | no
Link click event | no
Form change event | no
Form submit event | no
Form focus event | no
Site search event | no
Add to cart event (old) | yes
Remove from cart event (old) | yes
Error/exception event | yes
App lifecycle event | n/a
Installation event | n/a
Consent granted event | no
Consent withdrawn event | no
Push notification event | n/a
Deep link event | n/a
Social media event | no
Ad impression event | no
Ad click event | no
Ad conversion event | no
WebVitals event | no

# OUT-OF-THE-BOX ENTITIES
DesktopContext | no
MobileContext / platformContext | no
DeviceContext | no
ApplicationContext | no
GeoLocationContext | no
SessionContext | no
ScreenContext | no
gdpr/consent entity | no
DeepLinkContext | no
WebPageContext | no
PerformanceTiming entity | no
gaCookies entity | no
ClientHints entity | no
Optimisely entity | no
WebVitals | 
PrivacySandbox entity | 
PerformanceNavigationTiming entity | 

# DETAILS
Client/Server | server
Version | 2.0.0
Status | Maintained
Repository | https://github.com/snowplow/snowplow-scala-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/scala-tracker/
Supported platforms | servers
