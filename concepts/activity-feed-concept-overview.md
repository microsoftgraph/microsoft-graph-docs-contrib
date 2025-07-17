---
title: "Use the activity feed API to enable cross-device experiences"
description: "Using Microsoft Graph, you can enable experiences that flow seamlessly between devices, create richer activities with Adaptive Cards, and help drive app usage."
ms.localizationpriority: medium
ms.subservice: "project-rome"
ms.date: 11/07/2024
---

# Use the activity feed API in Microsoft Graph to enable cross-device experiences

Activities make users more productive by helping them resume important tasks in your app quickly across devices. Microsoft helps drive user productivity with your apps through experiences like Windows Timeline, Windows Sets, Cortana Pick up Where I left off, and Microsoft Launcher, which are all powered by the activity feed. When you use activities, these Microsoft experiences can start driving engagement with your app. You can also display activities in your apps to help users get back to what they were doing on any device, on any platform, including Windows, Android, and iOS.

The following sections describe the benefits of integrating with activities.

## Enable experiences that flow seamlessly between Windows, Android, Linux, and iOS devices

Great applications help users do great things&mdash;enabling a wide range of creativity, productivity, and entertainment scenarios. Returning to a task can be a challenge, especially when a person wants to continue the task on a different device or platform. By incorporating activities into applications, you can help users return to recent tasks quickly using whatever screen is handy&mdash;they can move from web to mobile to desktop and back again. With history items, users can easily see which activities they used most recently, when, and for how long.

Each user activity represents a single destination within your app: a product page, TV show, document, or current campaign in a game. All you need is a deep link to resume the activity in your app. Use [get recent activities](/graph/api/projectrome-get-recent-activities) to create a list of recently viewed products for your shopping app or a current reading list for books and news articles.

## Create richer activities for any experience with Adaptive Cards

When activities are rendered in Microsoft experiences such as Windows Timeline, they're displayed using the [Adaptive Card](https://adaptivecards.io/) framework, which allows you to create beautiful, rich cards to showcase your app's activities. You can use the Adaptive Card SDK to render rich cards in your own app, too. If you do not provide an adaptive card for each activity, we'll automatically create a simple activity card based on your application name and icon, the required Title field, and optional Description field.

## Let Microsoft help drive app usage with features that reach hundreds of millions of customers

Integrating with user activities not only enables users to resume activities in your app seamlessly, it means tapping into a growing set of Microsoft experiences for Windows, iOS, and Android&mdash;experiences designed to drive user productivity and help users engage with your app on all devices. Using Microsoft Graph, you can integrate with user activities just once and reach hundreds of millions of consumers, and tens of millions of customers in organizations who use Windows as well as Microsoft products for iOS and Android devices.

## Related content

- [Cross-device experiences in Microsoft Graph](cross-device-concept-overview.md)
- [Use the activity feed API to resume a user's activity across devices](/graph/api/resources/activity-feed-api-overview)
- [Publish activities and history items with one request using deep insert](/graph/api/projectrome-put-activity#example-2---deep-insert)
- [Learn more about Project Rome](/windows/project-rome/)
