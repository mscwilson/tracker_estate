DEV GUIDES
API docs
Good docs (clear page titles, many sections, easy to use)
Basic demo app that just sends events
Instrumentation apps ("realistic")

TESTS AND CI
Automated unit tests
Integration/validation tests
Automated demo building
Automated deploy to package manager
Automated deploy to Github

EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS)
Custom POST path
Custom connection timeout
Custom request headers
Custom NetworkConnection/HttpClient
Custom max payload size (to deprecate?!)
Custom batch size
Events are buffered in memory or db
EventStore has maximum limit
Custom EventStore
Custom threadpool size
Request callback (event sending callback)
Provide stop retry for HTTP error codes
Server anonymisation option
Cookie jar

TRACKER CONFIGURATION
Namespace mandatory
Configurable AppID
Configurable logger
Anonymous tracking
Autotracking session entity
Autotracking application entity
Autotracking platform entity
Autotracking geolocation entity
Autotracking deeplink entity
Autotracking screenView event
Autotracking screen entity
Autotracking page entity
Autotracking lifecycle events
Autotracking exception events
GDPR entity configuration
Global contexts
Choose which platform entity properties to track


SESSION CONFIGURATION
Foreground/background timeout
onSessionUpdate callback

SUBJECT CONFIGURATION
Tracker Subject - adds to all events
Event Subject - for that event only
Set user-agent
Set custom userID
Set timezone
Set language
Set networkUserid
Set domainUserid
Set ipAddress
Set screen resolution
Set screen viewport
Set colour depth
Set domain sessionId
Set domain sessionIndex

EVENT LOSS CALLBACKS
Sending failure callback
Drop events callback


# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | y
Events are different classes | y
Events are different functions | y
Remote configuration | y
Multiple tracker instances | y
Track an event on multiple trackers at once | n
Event_id and timestamp not overridable | y
True_timestamp available | y
Sent_timestamp available | y
Track returns event_id | y
Automatically track general atomic fields | y
Tracker pausable | y
Emitter pausable | y
Session pausable | y
Start new session command | y
Flush events command | y
Flush at regular time intervals | n
Event index counter for session | y
Timestamp on session | y
Asynchronous event sending | y
Retry with exponential back-off | y
Plug-in architecture | y

OUT-OF-THE-BOX EVENTS
Page view event
Mobile screen view event
Snowplow screen view event
Structured event
Unstructured event
Self-describing event
eCommerce event (old)
Timing event
Page ping event
Link click event
Form change event
Form submit event
Form focus event
Site search event
Add to cart event
Remove from cart event
Error/exception event
App lifecycle event
Installation event
Consent granted event
Consent withdrawn event
Push notification event
Deep link event
Social media event
Ad impression event
Ad click event
Ad conversion event
media tracking (various)
ecommerce (various)

OUT-OF-THE-BOX ENTITIES
DesktopContext
MobileContext / platformContext
DeviceContext
ApplicationContext
GeoLocationContext
SessionContext
ScreenContext
gdprContext
DeepLinkContext
WebPageContext
PerformanceTimingContext
gaCookiesContext
ClientHintsContext
OptimiselyXSummaryContext

INTERNAL NOTES

Fixes
Refactor ScreenView using a single schema for all the trackers
Deprecate eCommerce transaction events


New features
Wait queue until tracker ready (JS #401)
Mobile hybrid apps with interaction between mobile and JS trackers
Interaction between client and server trackers
Diagnostic events (tracking errors and informing config changes)
[Mobile] Application install store attribution
A/B testing (Optimizely?)
Cookies jar for client trackers
