# DEV GUIDES
API docs | no
Good docs (clear page titles, easy to use) | yes
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | no
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | 

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
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | no
Configurable AppID | yes
Configurable logger | no
Anonymous tracking | no
Autotracking session entity | no
Autotracking application entity | 
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
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | no
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | no
Event Subject - for that event only | no
Set user-agent | no
Set custom userID | yes
Set timezone | no
Set language | no
Set networkUserid | 
Set domainUserid | 
Set ipAddress | 
Set screen resolution | 
Set screen viewport | 
Set colour depth | 
Set domain sessionId | 
Set domain sessionIndex | 

# EVENT LOSS CALLBACKS
Sending failure callback | no
Drop events callback | no

# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | no
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | yes
Automatically track general atomic fields | no
Tracker pausable | no
Emitter pausable | n/a
Flush events command | n/a
Flush at regular time intervals | n/a
Start new session command | n/a
Event index counter for session | n/a
Timestamp on session | n/a
Asynchronous event sending | no
Retry with exponential back-off | no
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 