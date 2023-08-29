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
EventStore has maximum limit | n/a
Events are buffered in memory or db | no
Custom EventStore | n/a
Provide stop retry for HTTP error codes | no
Custom threadpool size | n/a
Request callback (event sending callback) | n
Server anonymisation option | n
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | 
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | 
Autotracking application entity | 
Autotracking platform entity | no
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | 
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | n/a
onSessionUpdate callback | n
Foreground/background callbacks | n/a

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | no
Event Subject - for that event only | no
Set user-agent | n
Set custom userID | y
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
Event_id and timestamp not overridable | 
True_timestamp available | 
Sent_timestamp available | 
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | n
Emitter pausable | n/a
Flush events command | n/a
Flush at regular time intervals | n/a
Start new session command | n
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | no
Event sending retry | no | n/a?
Plug-in architecture | no
Events are different classes | n
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
Mobile screen view event | no
Snowplow screen view event | no
eCommerce events (old) | no
Timing event | no
Page ping event | yes
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
WebVitals | n
PrivacySandbox entity | n
PerformanceNavigationTiming entity | n

# DETAILS
Client/Server | client
Version | 1.1.0
Status | Maintained
Repository | https://github.com/snowplow-incubator/amphtml
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/google-amp-tracker/
Supported platforms | web
