# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | no
Instrumentation apps ("realistic") | no
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | y
Custom connection timeout | no
Custom request headers | y
Custom NetworkConnection/HttpClient | no
Custom max payload size (to deprecate?!) | no
Custom batch size | no
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | no
Provide stop retry for HTTP error codes | no
Custom threadpool size | n
Request callback (event sending callback) | n
Server anonymisation option | y
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | y
Autotracking session entity | yes
Autotracking application entity | yes
Autotracking platform entity | yes
Autotracking screenView event | yes
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | no
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | y
Autotracking deeplink entity | n
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | yes
onSessionUpdate callback | n
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | no
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
Set user fingerprint | 

# EVENT LOSS CALLBACKS
Sending failure callback | no
Drop events callback | no

# FEATURES
Snowplow API | yes
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
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
Events are different classes | 
Events are different functions | 
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
Mobile screen view event | yes
Snowplow screen view event | no
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
Error/exception event | yes
App lifecycle event | yes
Installation event | yes
Consent granted event | yes
Consent withdrawn event | yes
Push notification event | no
Deep link event | no
Social media event | no
Ad impression event | no
Ad click event | no
Ad conversion event | no
WebVitals event | no

# OUT-OF-THE-BOX ENTITIES
DesktopContext | n/a
MobileContext / platformContext | yes | for mobile
DeviceContext | no
ApplicationContext | yes
GeoLocationContext | yes
SessionContext | yes
ScreenContext | yes
gdpr/consent entity | yes
DeepLinkContext | no
WebPageContext | y | for web
PerformanceTiming entity | no
gaCookies entity | no
ClientHints entity | no
Optimisely entity | no
WebVitals | n
PrivacySandbox entity | n
PerformanceNavigationTiming entity | n

# DETAILS
Client/Server | client
Version | 0.4.0
Status | Early Release
Repository | https://github.com/snowplow-incubator/snowplow-flutter-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/flutter-tracker
Supported platforms | JS tracker v3.5, iOS tracker v5, Android tracker v5