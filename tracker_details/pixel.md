# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | no
Instrumentation apps ("realistic") | no
Release notes on Github | n/a

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | n
Automated deploy to package manager | n/a
Automated deploy to Github | n/a

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | n
Custom POST path | n
Custom connection timeout | n
Custom request headers | n
Custom NetworkConnection/HttpClient | n
Custom max payload size (to deprecate?!) | no
Custom batch size | n
EventStore has maximum limit | n
Events are buffered in memory or db | no
Custom EventStore | n
Provide stop retry for HTTP error codes | no
Custom threadpool size | n
Request callback (event sending callback) | n
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | n
Configurable AppID | no
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | n
Autotracking application entity | n
Autotracking platform entity | no
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | 
GDPR entity configuration | no
Global contexts | no
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
Tracker Subject - adds to all events | no
Event Subject - for that event only | no
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
Snowplow API | no
Remote configuration | no
Multiple tracker instances | n
Track an event on multiple trackers at once | n
Event_id and timestamp not overridable | y
True_timestamp available | n
Sent_timestamp available | n
Track returns event_id | no
Automatically track general atomic fields | no
Tracker pausable | n
Emitter pausable | n
Flush events command | n
Flush at regular time intervals | n
Start new session command | n/a
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | no
Event sending retry | n
Plug-in architecture | no
Events are different classes | n
Events are different functions | n
Session pausable | n/a
Media tracking | n
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | no
Unstructured event | no
Structured event | yes
Page view event | no
Mobile screen view event | no
Snowplow screen view event | no
eCommerce events (old) | no
Timing event | no
Page ping event | no
Link click event | yes
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
Client/Server | client
Version | 0.1.0
Status | Maintained
Repository | n/a
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/pixel-tracker/
Supported platforms | web, email
