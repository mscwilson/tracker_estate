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
Automated deploy to package manager | no
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
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | 
onSessionUpdate callback | 

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
Start new session command | 
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Retry with exponential back-off | no
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 
