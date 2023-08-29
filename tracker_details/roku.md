# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | yes
Instrumentation apps ("realistic") | no
Release notes on Github | n | missing v0.1.0

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | no
Custom connection timeout | no
Custom request headers | no
Custom NetworkConnection/HttpClient | no
Custom max payload size (to deprecate?!) | no
Custom batch size | no
EventStore has maximum limit | no
Events are buffered in memory or db | no
Custom EventStore | no
Provide stop retry for HTTP error codes | no
Custom threadpool size | n/a
Request callback (event sending callback) | n
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | no
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
Has session | n
Foreground/background timeout | no
onSessionUpdate callback | n
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | n/a
Set user-agent | no
Set custom userID | no
Set timezone | n
Set language | n
Set networkUserid | y
Set domainUserid | y
Set ipAddress | n
Set screen resolution | n
Set screen viewport | n
Set colour depth | n
Set domain sessionId | n
Set domain sessionIndex | n
Set user fingerprint | n

# EVENT LOSS CALLBACKS
Sending failure callback | no
Drop events callback | no

# FEATURES
Snowplow API | yes
Remote configuration | no
Multiple tracker instances | y
Track an event on multiple trackers at once | y
Event_id and timestamp not overridable | yes
True_timestamp available | no
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | no
Emitter pausable | no
Flush events command | no
Flush at regular time intervals | no
Start new session command | no
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Event sending retry | y
Plug-in architecture | no
Events are different classes | n
Events are different functions | y
Session pausable | n/a
Media tracking | yes
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | no
Structured event | yes
Page view event | no
Mobile screen view event | yes
Snowplow screen view event | no
eCommerce events (old) | no
Timing event | no
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
DesktopContext | no
MobileContext / platformContext | no
DeviceContext | yes | a Roku-specific entity
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
Client/Server | client
Version | 0.2.0
Status | Early Release
Repository | https://github.com/snowplow-incubator/snowplow-roku-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/roku-tracker/
Supported platforms | Roku
