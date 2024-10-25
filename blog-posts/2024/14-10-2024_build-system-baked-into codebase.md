# Build System Baked into the Codebase

## Background

I need to write something that I really enjoyed during my time at Virtusa. I always liked creating and working with console applications. So apparently thats one reason I like to work with build systems.

So I going to write about build systems which single handedly I built. But there were many design levels conversions I had with my colleagues. 

## Build system for b2 application

This application which I hypothetically calls it b2 was started back in 2007 and it was the dream project, and eventually I got the chance to work on that project around 2012 , in fact I got the opportunity to lead the project.  

In 2012, b2 was in production and previous teams has released 4 versions, this application had it all, from elegant architecture to state of the art tech stack and its a near real time data movement system.

These project execution methodology was waterfall and source repository was maintained by our company locally in a Microsoft Team foundation server with fail safes implemented specifically for the backend SQL server. And after each release we hand over the source code.  We had a local build server that runs MS build scripts and cruise control, after the 4th release around latter part of 2010 the build server hard disk had crashed and there is no fail safes implemented, other good thing was non of the build scripts or the configuration were source controlled. So all the build logic was lost.

When I started the 5th release I was able on board a great team.  Even though I am not familiar with the codebase,  I‘m bit familiar with b2 system integration interfaces since I have intergraded b2 for other systems.