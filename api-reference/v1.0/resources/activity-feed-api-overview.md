# Use the activity feed API to resume a user's activity across devices and platforms

## Using the activity feed API
Activity feed API requests are performed on behalf of a user through the use of [delegated permissions](../../../concepts/permissions_reference.md#delegated-permissions-application-permissions-and-effective-permissions), only using the [user activity permission](../../../concepts/permissions_reference.md) which may be used with either personal or work and school accounts. 

User activities are represented by the [activity](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/projectrome_activity) resource and organized in a time-based feed represented by the collection me/activities. Each activity represents a unique... 

## What makes a great user activity?

User activities don’t just launch apps — they are deep links into specific content within your app. The user activities you create can not only be used in your own app, but will also appear in Cortana and Windows Timeline -- driving more app re-engagement and making it easier for your users to continue using your app across multiple devices.  

Let’s learn what makes a **great** user activity in the context of your unique app. 

### What should become an activity? 

Since every app is different, it's up to each app developer to understand the best way to map actions within your application to User Activities. (For example, games might create an activity for each campaign, Document authoring apps might create an activity for each unique document, and Line-of-business apps might create an activity for each workflow.) 

**Guidelines** 

**DO:** Record a single activity for a group of related user actions. 
If your application is used for a sequence of related content, it probably makes sense to record a single activity for the entire engagement session.  

*Playlist scenarios:* This is especially relevant for Music Playlists of TV Shows — A single user activity can be updated to show your progress. In this case, you will have a single user activity with multiple [history items](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/projectrome_historyitem) representing periods of engagement across multiple days or weeks.  

**DO:** Store user data to the cloud. 
If you want to support cross-device activities, you need to make sure the content required to re-engage this activity is stored to a cloud location. For example, if you publish an activity each time a user edits a document, the document should be stored in the cloud as opposed to locally on the user's device in order to enable cross-device re-engagement.  

**DO NOT:** Create a user activity for actions that users do not need to resume in the future. 
If your application is used to complete simple, one-time operations that do not persist status for you to track status in the future, you probably do not need to write an user activity. 

To be clear, even though user activities appear in Windows *Timeline*, this is **not** designed as a versioning tool — clicking on an document-based activity should always show the latest version of that document (including changes which might have been made by another user.)

**DO NOT:** Create a user activity for actions completed by *other users*. 
If someone sends the user a message, or @ mentions the user within your app, you should not write a new activity. These interactions are better served by surfacing notifications.  

*Collaboration scenarios:* If multiple people are working on the same activity (such as a Word document), there will be cases when another user has made changes to the document after you last edited it. In this case, app developers might want to update the visual elements in the activity to reflect changes made to the document. To do this, the app may update the existing activity without creating a new history item. 

**Note for web applications:** If you are publishing activities for a web application it's important to include **both** an *activationURL* and a *fallbackURL* for each of your activities so that they will launch the user back into your app as expected from Microsoft experiences like Windows Timeline. 

**Sample App Guidance** 
While every app is different, most apps will fall into one of the following interaction patterns: 

* **Document-based apps** — Create one activity per document with one or more History records reflecting periods of use. It is important to update your activity card as changes are made to the document. 
* **Media playback apps** — Create one activity per logical grouping of content such as a Playlist, Program, or standalone content. 
* **Games** — Create one activity for each save game or world.  If your game supports only a single sequence of levels, you can write the same activity over time, although you may want to update your card to show your latest progress or achievements. 
* **Utility apps** — If there is nothing within your app that users would want to resume, you should not publish activities. A good example is a simple single-purpose app like Calculator. 
* **Line-of-business apps** — Many apps exist for managing simple tasks or workflows. Create one activity for each separate workflow accessed through your app. For example, each expense report would be a separate activity, since you might want to click that activity to see if it was approved.

*Some complex apps include multiple interaction patterns. You may want to follow different user activity creation patterns for different scenarios handled by your app.*


## Common use cases 

## Next steps
The activity feed API helps you build experiences that span devices and platforms so users can pick up where they left off seamlessly: 

- Review the [activity resource](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/projectrome_activity), define your app's activities to help users resume important tasks and explore the [Adaptive Card](http://adaptivecards.io/samples/) samples for ideas to make your activities **pop**  
- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

**Looking for more ideas?** 
- See [how Microsoft experiences are using activities](https://channel9.msdn.com/events/Build/2017/B8108).
- Learn [about the activity feed API and pick up where I left off](https://channel9.msdn.com/Events/Windows/Windows-Developer-Day-Fall-Creators-Update/WinDev011)
