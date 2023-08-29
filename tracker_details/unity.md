# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | yes
Instrumentation apps ("realistic") | no
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | 
Automated deploy to package manager | y
Automated deploy to Github | n

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | y
Custom POST path | n
Custom connection timeout | n
Custom request headers | n
Custom NetworkConnection/HttpClient | n
Custom max payload size (to deprecate?!) | yes
Custom batch size | y
EventStore has maximum limit | n
Events are buffered in memory or db | yes
Custom EventStore | n
Provide stop retry for HTTP error codes | no
Custom threadpool size | n
Request callback (event sending callback) | n
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | n
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | y | probably?
Autotracking application entity | n
Autotracking platform entity | yes
Autotracking screenView event | n
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | n
GDPR entity configuration | n
Global contexts | no
Autotracking page entity | n
Autotracking geolocation entity | n
Autotracking deeplink entity | n
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | y
onSessionUpdate callback | n
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | n
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
Event_id and timestamp not overridable | n
True_timestamp available | n
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | y
Emitter pausable | n
Flush events command | n
Flush at regular time intervals | n
Start new session command | n
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Event sending retry | n
Plug-in architecture | no
Events are different classes | y
Events are different functions | n
Session pausable | n
Media tracking | n
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | no
Structured event | yes
Page view event | yes
Mobile screen view event | y
Snowplow screen view event | deprecated
eCommerce events (old) | yes
Timing event | yes
Page ping event | no
Link click event | no
Form change event | no
Form submit event | no
Form focus event | no
Site search event | no
Add to cart event (old) | no
Remove from cart event (old) | no
Error/exception event | no
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
DesktopContext | yes
MobileContext / platformContext | yes
DeviceContext | no
ApplicationContext | no
GeoLocationContext | yes
SessionContext | no
ScreenContext | no
gdpr/consent entity | no
DeepLinkContext | no
WebPageContext | no
PerformanceTiming entity | no
gaCookies entity | no
ClientHints entity | no
Optimisely entity | no
WebVitals | n
PrivacySandbox entity | n
PerformanceNavigationTiming entity | n

# DETAILS
Client/Server | client
Version | 0.8.0
Status | Early Release
Repository | https://github.com/snowplow/snowplow-unity-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/unity-tracker/
Supported platforms | Unity 2018.1+
.NET Std 2.0
