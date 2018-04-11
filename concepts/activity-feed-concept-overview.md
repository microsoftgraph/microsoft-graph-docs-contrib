# Using the activity feed API in Microsoft Graph to enable cross-device experiences

Activities make users more productive by helping them resume important tasks in your app quickly across devices. Microsoft helps drive user productivity with your apps through experiences like Windows Timeline, Cortana Pick up Where I left off and Microsoft Launcher which are all powered by the activity feed. By writing activities, these Microsoft experiences can start driving engagement with your app. You can also display activities in your apps to help users get back to what they were doing or website on any device, on any platform like Windows, Android and iOS.

## Why integrate with activities?
### Enable experiences that flow seamlessly between Windows, Android, Linux and iOS devices 
Great applications help users do great things — enabling a wide range of creative, productivity and entertainment scenarios. Returning to a task can be a challenge, especially when a person wants to continue the task on a different device or platform. By incorporating activities into applications, developers can help users return to recent tasks quickly using whatever screen is handy so they can move from web to mobile to desktop and back again without skipping a beat. With history items users can easily see which activities they used most recently, when and for how long.   

Each user activity represents a single destination within your app: such as a product page, TV show, document or your current campaign in a game. All you need is a deep-link to resume the activity in your app. Use get recent activities to create a list of recently viewed products for your shopping app or a currently-reading list for books & news articles. 

### Create richer activities for any experience with Adaptive cards
When activities are rendered in Microsoft experiences such as Windows Timeline, we display them using the [Adaptive Card](http://adaptivecards.io/) framework which allows you to create beautiful, rich cards to showcase your app's activities. You can use the Adaptive Card SDK to render rich cards in your own app too.  If you do not provide an adaptive card for each activity, we'll automatically create a simple activity card based on your application name and icon, the required Title field and optional Description field. 

### Let Microsoft help drive app usage with features that reach hundreds of millions of customers
Integrating with User Activities not only enables users to resume activities in your app seamlessly, it means tapping into a growing set of Microsoft experiences for Windows, iOS and Android designed to drive user productivity and help users engage with your app on all devices. Using Microsoft Graph, you can integrate with User Activities just once and reach hundreds of millions of consumers, and tens of millions of organization customers who use Windows as well as Microsoft products for iOS and Android devices.

![Windows Timeline screencap](https://winblogs.azureedge.net/win/2017/05/22-591a3ec9833f4.jpg)

## See also

- [Cross-device experiences in Microsoft Graph](cross-device-concept-overview.md)
- [Use the activity feed API to resume a user's activity across devices](../api-reference/v1.0/resources/activity-feed-api-overview.md)
