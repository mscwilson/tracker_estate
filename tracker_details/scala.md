# DEV GUIDES
API docs | no
Good docs (clear page titles, easy to use) | no
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | no
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | 
Automated deploy to package manager | 
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | 
Custom POST path | 
Custom connection timeout | 
Custom request headers | 
Custom NetworkConnection/HttpClient | 
Custom max payload size (to deprecate?!) | yes
Custom batch size | 
EventStore has maximum limit | 
Events are buffered in memory or db | yes
Custom EventStore | 
Provide stop retry for HTTP error codes | no
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | 
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | 
Autotracking application entity | 
Autotracking platform entity | no
Autotracking screenView event | 
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | 
GDPR entity configuration | no
Global contexts | yes
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | 
onSessionUpdate callback | 
Foreground/background callbacks | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | 
Set custom userID | 
Set timezone | 
Set language | 
Set networkUserid | 
Set domainUserid | 
Set ipAddress | 
Set screen resolution | 
Set screen viewport | 
Set colour depth | 
Set domain sessionId | 
Set domain sessionIndex | 

# EVENT LOSS CALLBACKS
Sending failure callback | 
Drop events callback | 

# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | no
Remote configuration | no
Multiple tracker instances | 
Track an event on multiple trackers at once | 
Event_id and timestamp not overridable | 
True_timestamp available | 
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | 
Emitter pausable | 
Flush events command | 
Flush at regular time intervals | 
Start new session command | n/a
Event index counter for session | n/a
Timestamp on session | n/a
Asynchronous event sending | yes
Event sending retry | y
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 
Media tracking | 
Youtube tracking | 
Vimeo tracking | 
Ecommerce tracking | 

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | yes
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
Version | 1.0.1
Status | Maintained
Repository | https://github.com/snowplow/snowplow-scala-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/scala-tracker/
Supported platforms | servers
