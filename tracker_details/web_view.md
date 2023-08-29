# DEV GUIDES
API docs | no
Good documentation | yes
Basic demo app | no
Instrumentation apps ("realistic") | yes
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | n/a
Custom POST path | n
Custom connection timeout | n
Custom request headers | n
Custom NetworkConnection/HttpClient | n
Custom max payload size (to deprecate?!) | n
Custom batch size | n
EventStore has maximum limit | n
Events are buffered in memory or db | n
Custom EventStore | n
Provide stop retry for HTTP error codes | n
Custom threadpool size | n
Request callback (event sending callback) | n
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | n
Configurable AppID | n
Configurable logger | n
Anonymous tracking | n
Autotracking session entity | n
Autotracking application entity | n
Autotracking platform entity | n
Autotracking screenView event | n
Autotracking screen entity | n
Autotracking lifecycle events | n
Autotracking exception events | n
GDPR entity configuration | n
Global contexts | n
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
Tracker Subject - adds to all events | n
Event Subject - for that event only | n
Set user-agent | n
Set custom userID | n
Set timezone | n
Set language | n
Set networkUserid | n
Set domainUserid | n
Set ipAddress | n
Set screen resolution | n
Set screen viewport | n
Set colour depth | n
Set domain sessionId | n
Set domain sessionIndex | n
Set user fingerprint | n

# EVENT LOSS CALLBACKS
Sending failure callback | n
Drop events callback | n

# FEATURES
Snowplow API | n/a
Remote configuration | n
Multiple tracker instances | n
Track an event on multiple trackers at once | n
Event_id and timestamp not overridable | y
True_timestamp available | n
Sent_timestamp available | n
Track returns event_id | n
Automatically track general atomic fields | n
Tracker pausable | n
Emitter pausable | n
Flush events command | n
Flush at regular time intervals | n
Start new session command | n/a
Event index counter for session | n/a
Timestamp on session | n/a
Asynchronous event sending | n
Event sending retry | n
Plug-in architecture | n
Events are different classes | n
Events are different functions | y
Session pausable | n/a
Media tracking | n
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | y
Unstructured event | n
Structured event | y
Page view event | y
Mobile screen view event | y
Snowplow screen view event | n
eCommerce events (old) | n
Timing event | n
Page ping event | n
Consent granted event | n
Consent withdrawn event | n
Link click event | n
Form change event | n
Form submit event | n
Form focus event | n
Site search event | n
Add to cart event (old) | n
Remove from cart event (old) | n
Error/exception event | n
App lifecycle event | n/a
Installation event | n/a
Push notification event | n/a
Deep link event | n/a
Social media event | n
Ad impression event | n
Ad click event | n
Ad conversion event | n
WebVitals event | n

# OUT-OF-THE-BOX ENTITIES
DesktopContext | n
MobileContext / platformContext | n
DeviceContext | n
ApplicationContext | n
GeoLocationContext | n
SessionContext | n
ScreenContext | n
gdpr/consent entity | n
DeepLinkContext | n
WebPageContext | n
PerformanceTiming entity | n
gaCookies entity | n
ClientHints entity | n
Optimisely entity | n
WebVitals | n
PrivacySandbox entity | n
PerformanceNavigationTiming entity | n

# DETAILS
Client/Server | client
Version | 0.2.0
Status | Early Release
Repository | https://github.com/snowplow-incubator/snowplow-webview-tracker
Documentation | https://docs.snowplow.io/docs/collecting-data/collecting-from-own-applications/webview-tracker/
Supported platforms | Works with the iOS, Android, and React Native trackers
