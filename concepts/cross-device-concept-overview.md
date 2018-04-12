# Cross-device experiences in Microsoft Graph

Today we live in a **multi-device** world, and the way we use them spans different platforms and form factors: We read the morning news on our tablets, check email during the morning commute on our phones and use our desktop PCs when at work. At night, we watch movies on our home media consoles and use smart speakers to catch up on news from the day. The average user engages with multiple devices & platforms throughout the day. However, the tasks we perform on a daily basis (whether at home with family, or at work with colleagues) are not inherently device-centric, but rather **human-centric**. As we increase our device count and rely more on apps to run our lives, it is becoming more complicated to get things done.

Microsoft is building a platform for creating experiences that transcend a single device so they can harmonize across devices – empowering a developer to create **human-centric** scenarios that move with the user and blur the lines between their devices regardless of form factor or platform.
## Why cross-device experiences?
### Deliver *human-centric* experiences by helping your users move easily across all their devices with Microsoft Graph 
Recently there has been a dramatic shift in the way users use their devices. Rather than substituting new devices, users are using additional form factors like phones and tablets, alongside their PCs. In the past, form factor drove distinct types of behavior differences among consumers. However, this is no longer the case as multi-device consumers conduct all their activities across all their devices. Consumers want to be able to use whatever screen is available independent of where the input comes from.

As users purchase more apps and devices, they naturally expect their lives to become better – simpler, more enjoyable, more productive. More often users are faced with some harsh realities where each device has a clear boundary and getting things done across devices requires unnatural actions such as sending oneself an email or using USB sticks. Users see friction when moving between their devices and sometimes important “tasks” get lost because of this context switching. Developers suffer due to all this context switching as well since user engagement is frequently lost as their users switch between devices and apps.

Microsoft Graph exposes multiple APIs from Microsoft cloud services through a single endpoint: https://graph.microsoft.com, simplifying queries that would otherwise be more complex. In addition to accessing data from Azure Active Directory & Office 365 apps developers can now access the activities and devices that belong to their users enabling rich human-centric experiences that cross devices and platforms. 

### Use the device relay API to trigger custom user-initiated experiences across devices in real-time
In addition to Microsoft devices (PCs, Windows Phones, Xbox, IoT, HoloLens, etc.), the device graph also exposes Android and iOS devices. This enables developers to truly break down boundaries between their users' devices. Developers can build apps that leverage the user’s environment and create rich experiences that transcend a single device in real-time. 

Below are some use cases of how developers could use these APIs:
* **Extend the experience:** A developer could extend their app by providing UX to discover devices and to launch  their app on those devices. 

*For example, the user could be working on a purchase order on her phone, discover the PC in her office, and launch the app there to finish entering the purchase order.*
* **Augment the experience:** A developer could create a companion experience for their app on another of the user’s devices. 

*For example, the app could include UX to launch itself on other devices. In a game, the user could launch the app to a device with a larger screen (e.g. from a PC to a Xbox). The Xbox could present a full view of the game (e.g. a first-person view), while the device with the smaller screen could present a different view with additional context (e.g. a top level view of the game level showing the player and opponents' locations).* 
* **Enrich the experience:** A developer could add additional controlling abilities to their app. An example of this could be providing remote control abilities for the main app from a companion device. 

*For example, when the user launches an app from one device to another, the target device could show the full experience (e.g. a 3D model in a design app), while the source device could show a list of the most common actions given the state of the app on the target device (e.g. rotate, resize, color palette, etc.).*

### Use the activity feed API to effortlessly synchronize users' tasks across devices and tap into a growing set of Microsoft experiences designed to help them pick up where they left off  
With activities, developers have a way to capture the unique tasks for users of their app which flow seamlessly across any platform and device, allowing them to quickly resume working on their preferred screen. Using the activity feed, developers can create a human-centric view of the tasks most important to users helping reduce friction when switching from web to mobile to PC and beyond.  

Below are some use cases of how developers could use these APIs:
* **Reduce friction from context-switching:** A developer could provide a view of the most recent activities to help a user get back to the last thing she was working on. 

*For example,  the user could be working on a purchase order on her phone on her commute. When she arrives at the office she pulls up the app on her PC and is able to view the purchase order in progress and quickly resume working on it on her PC.* 
* **Provide a human-centric view of engagement:** A developer could use history items to understand which activities a user spends the most time on and keep them front and center in the experience. 

*For example, the user could be working on designs for several different customers. When she opens up the app she sees a list of designs with the ones she works on most frequently listed first.* 
* **Leverage the power of Microsoft experiences:** A developer can publish activities for their apps and Microsoft experiences such as Windows Timeline & Microsoft Launcher for Android will display them to help users get back to them, further driving engagement with apps. 

*For example, a shopping app may use activities to render a list of products the user has recently viewed on the web or on her iphone. When the user opens up Windows Timeline on her PC, she sees the products listed alongside her activities in other apps, selects one and launches the shopping app to the right product.*  

## Next steps

- [Use the Microsoft Graph API to enable cross-device experiences](../api-reference/v1.0/resources/cross-device-reference-overview.md)
- [Learn more about the activity feed API in Microsoft Graph](activity-feed-concept-overview.md)
- [Learn more about the device replay API in Microsoft Graph](device-relay-concept-overview.md)
