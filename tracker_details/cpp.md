# DEV GUIDES
API docs | yes
Good docs (clear page titles, easy to use) | yes
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | yes
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | yes
Automated deploy to package manager | yes
Automated deploy to Github | 

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
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

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
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | yes
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | yes
Set custom userID | yes
Set timezone | yes
Set language | yes
Set networkUserid | 
Set domainUserid | 
Set ipAddress | 
Set screen resolution | 
Set screen viewport | 
Set colour depth | 
Set domain sessionId | 
Set domain sessionIndex | 

# EVENT LOSS CALLBACKS
Sending failure callback | yes
Drop events callback | yes

# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | yes
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
Retry with exponential back-off | yes
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 
