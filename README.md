API key: AoNK51DE7kLoGiY_RWNUvx3gFfgSsBHMiJN45CLjB9GIVNR7HheV8RMEd6bAc3ox

data.resourceSets[0].resources[0].travelDistance

http://dev.virtualearth.net/REST/v1/Routes/{travelMode}?wayPoint.1={wayPpoint1}&viaWaypoint.2={viaWaypoint2}&waypoint.3={waypoint3}&wayPoint.n={waypointN}&heading={heading}&optimize={optimize}&avoid={avoid}&distanceBeforeFirstTurn={distanceBeforeFirstTurn}&routeAttributes={routeAttributes}&timeType={timeType}&dateTime={dateTime}&maxSolutions={maxSolutions}&tolerances={tolerances}&distanceUnit={distanceUnit}&key={BingMapsKey}

users can invite each other to an event
a user have to create an event
when he create an event he CAN invite people
status pending*? by default status for invite is false
status is attribute of invites.
people can just join into the event if the requirement meets (geolocation)

=> pull out event creator, create an invite between current user and event creator.
to have event hold another foreign key (user_id)

message
v
|
user -< events -< tasks
|         |         
^         ^         
      invitation

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
