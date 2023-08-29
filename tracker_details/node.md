# DEV GUIDES
API docs | yes
Good documentation | no
Basic demo app | no
Instrumentation apps ("realistic") | no
Release notes on Github | n

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | n/a
Automated deploy to package manager | yes
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | 
Custom connection timeout | 
Custom request headers | 
Custom NetworkConnection/HttpClient | 
Custom max payload size (to deprecate?!) | no
Custom batch size | yes
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | no
Provide stop retry for HTTP error codes | no
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | yes
Autotracking session entity | yes
Autotracking application entity | no
Autotracking platform entity | no
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | no
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | n/a
onSessionUpdate callback | no 
Foreground/background callbacks | n/a

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | no
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
Set domain sessionId | y
Set domain sessionIndex | y
Set user fingerprint | 

# EVENT LOSS CALLBACKS
Sending failure callback | 
Drop events callback | 

# FEATURES
Snowplow API | no
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | yes
Event_id and timestamp not overridable | 
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | n
Emitter pausable | 
Flush events command | yes
Flush at regular time intervals | no
Start new session command| yes
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Event sending retry | yes
Plug-in architecture | yes
Events are different classes | n
Events are different functions | y
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
Snowplow screen view event | yes
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
Version | 3.14.0
Status | Actively Maintained
Repository | https://github.com/snowplow/snowplow-javascript-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/node-js-tracker/
Supported platforms | servers