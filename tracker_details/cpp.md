# DEV GUIDES
API docs | yes
Good documentation | no 
Basic demo app | no
Instrumentation apps ("realistic") | yes
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | yes
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | no
Custom connection timeout | no
Custom request headers | no
Custom NetworkConnection/HttpClient | yes
Custom max payload size (to deprecate?!) | yes
Custom batch size | yes
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | yes
Provide stop retry for HTTP error codes | yes
Custom threadpool size | n
Request callback (event sending callback) | y
Server anonymisation option | n
Cookie jar | y

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | yes
Autotracking application entity | no
Autotracking platform entity | yes
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | no
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | n
Autotracking geolocation entity | n
Autotracking deeplink entity | n
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | yes
onSessionUpdate callback | n
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | yes
Set custom userID | yes
Set timezone | yes
Set language | yes
Set networkUserid | n
Set domainUserid | n
Set ipAddress | y
Set screen resolution | y
Set screen viewport | y
Set colour depth | y
Set domain sessionId | n
Set domain sessionIndex | n
Set user fingerprint | n

# EVENT LOSS CALLBACKS
Sending failure callback | yes
Drop events callback | no

# FEATURES
Snowplow API | yes
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | yes
Automatically track general atomic fields | yes
Tracker pausable | no
Emitter pausable | yes
Flush events command | yes
Flush at regular time intervals | no
Start new session command | yes
Event index counter for session | yes
Timestamp on session | yes
Asynchronous event sending | yes
Event sending retry | y
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
Page view event | no
Mobile screen view event | no
Snowplow screen view event | yes
eCommerce events (old) | no
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
GeoLocationContext | no
SessionContext | yes
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
Client/Server | client
Version | 2.0.0
Status | Maintained
Repository | https://github.com/snowplow/snowplow-cpp-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/c-tracker/
Supported platforms | C++11, macOS, Windows, Linux
