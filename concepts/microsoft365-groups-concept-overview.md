---
title: "Microsoft 365 groups in Microsoft Graph"
description: "Microsoft 365 groups are collections of users who share access to resources in Microsoft services. Create groups, manage group membership, and establish group policies."
author: "FaithOmbongi"
ms.localizationpriority: high
ms.prod: "groups"
doc_type: conceptualPageType
ms.custom: scenarios:getting-started
ms.date: 05/19/2023
---

# Overview of Microsoft 365 groups in Microsoft Graph

Microsoft 365 groups provide the foundational membership service for users to share conversations, files, notes, calendars, plans, and many other assets. 

> [!VIDEO https://www.youtube-nocookie.com/embed/WB9w6QM9xIU]

## Why integrate with Microsoft 365 groups? 

Groups form the foundation that enables user collaboration and integration across services to support rich scenarios in task planning, teamwork, education, and more. When you integrate with Microsoft 365 groups, your application can support millions of users as they transition across various experiences in the Microsoft 365 suite and beyond.  
 
### Create groups to facilitate teamwork across services 
 
You can use the Microsoft Graph API to create, manage, or delete groups throughout the lifecycle of collaboration. For example, you can do the following:  
 
- Use the [Create group](/graph/api/group-post-groups) API to provision a new group. The group is then made available in a range of applications, such as Outlook, SharePoint, Microsoft Teams, Planner, and even Microsoft Stream. Microsoft Graph synchronizes across these connected services to seamlessly provide access to all group members.  
 
    **Every Microsoft 365 group is integrated with a default set of Microsoft 365 services**

    ![Diagram showing Microsoft 365 group integration with files, notes, tasks, sites, conversations, and calendar](images/office365-groups-concept-overview-related-services-infographic.png)  

- Enable members to indicate that a group is one of their [favorites](/graph/api/group-addfavorite), or [remove it from their favorites](/graph/api/group-removefavorite) if they choose. 
- [Create](/graph/api/group-post-conversations), [get](/graph/api/group-get-conversation), or [delete](/graph/api/group-delete-conversation) group conversations from your custom application. 
- Schedule calendar [events](/graph/api/resources/event) on the group calendar. 
- Get information about the [SharePoint site](/graph/api/resources/site) that's associated with a group, such as the document library [lists](/graph/api/list-list) or [subsites](/graph/api/site-list-subsites). 
- [Create a plan](/graph/api/planner-post-buckets) in Planner that is owned by a group. The plan provides a visual way to track teamwork by allowing you to [create tasks](/graph/api/planner-post-tasks) that can be [organized across buckets](/graph/api/planner-post-buckets). 
- Access the [OneNote](/graph/api/resources/onenote) notebook associated with a group, which can be used for collecting meeting notes and organizing ideas. 
  
    **Microsoft 365 groups and conversations in Outlook in the web**

    ![Screenshot of Outlook on the web with groups listed in the Groups folder](images/office365-groups-concept-overview-groups-in-outlook.png) 

- [Enable a group for Microsoft Teams](/graph/api/team-put-teams) to allow group members to engage in persistent chat.  
- [Delete groups](/graph/api/group-delete). When a group is deleted, all associated content is also deleted, which prevents orphaned sites, conversations, or plans. 
 
### Manage group membership seamlessly
 
Microsoft 365 groups are collections of users who share access to resources in Microsoft services or within your app. Because group membership is managed centrally, any changes to membership affect all services associated with the group. You can use Microsoft Graph to perform the following group membership tasks:
 
- [Add](/graph/api/group-post-members) and [remove](/graph/api/group-delete-members) members from an existing group. 
- Get a [list of owners](/graph/api/group-list-owners) or a [list of members](/graph/api/group-list-members) for a group. This helps communicate who has access to group content, or who might need to perform administrative duties, such as renewing the group or approving a join request. 
- Designate groups as **Public**, where group content is visible to anyone in the same organization, or **Private**, where group content is only visible to members, via the [update group](/graph/api/group-update) operation. 
- [Remove owners](/graph/api/group-delete-owners) who are no longer participating in the ownership responsibilities for a particular group from the list of group owners. 
 
### Establish and maintain group policy settings 
 
As the number of groups created within an organization begins to grow, Microsoft Graph supports the ability to govern the usage and lifecycle of the group. You can enforce group policies across all groups within an organization. You can use the Microsoft Graph API to:

- Configure a broad range of [group policy settings](/graph/api/resources/groupsetting) that help define behaviors, such as automatically deleting groups unless they are renewed by an owner and enforcing naming policies on Microsoft 365 groups. 
- [Renew](/graph/api/group-renew) groups that are about to expire to allow team members to continue with collaboration and accessing content. If the group is not renewed according to the established expiration policy, the group is automatically deleted. 
- [Restore](/graph/api/directory-deleteditems-restore) deleted groups.

## API reference

Looking for the API reference for this service?

- [Groups API in Microsoft Graph v1.0](/graph/api/resources/groups-overview?view=graph-rest-1.0&preserve-view=true)
- [Groups API in Microsoft Graph beta](/graph/api/resources/groups-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

- Try out some sample API requests in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Learn more about how to [use the groups API](/graph/api/resources/groups-overview) in Microsoft Graph.
