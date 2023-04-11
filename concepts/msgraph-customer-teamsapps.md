---
title: "Integrate your Teams app with education assignments"
description: "Use Microsoft Graph to enable education students to access your Microsoft Teams app within assignments."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# Integrate your Teams app with education assignments

The education community has a rich set of tools and applications that enhance the experience for educators and users. You can use Microsoft Graph APIs to make your solution available to teachers and students by integrating your app with assignments in Teams.  

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Create a Microsoft Teams app

Microsoft Teams offers a collection of apps that are provided by Microsoft or external services. The apps can be tabs, bots, message extensions, or resources.

To get started building your own Teams app, see [Create a new Teams app](/microsoftteams/platform/toolkit/create-new-project?pivots=visual-studio-code).

For best practices for integrating your Teams app with assignments, see the [assignment apps sample](https://github.com/microsoft/edu-assignments-apps-sample).

For details about the requirements for integrating with the assignments flow in Teams, see [Assignment app integration requirements](https://aka.ms/AssignmentsRequirements).

## Request to enable your Teams app for assignment flows

After you create and publish your Teams app, before you can integrate with assignments, your app must be enabled. To request to have your app enabled, complete this [form](https://aka.ms/AssignmentsAppRequest).

## Add your Teams app to an assignment

Your Teams app can be added as an **assignment** resource.

1. Get the application **id** using this endpoint. Do not supply a request body.

```http
GET /appCatalogs/teamsApps?$filter=displayName eq 'APPLICATION NAME'
```

2. Attach the Teams app to an assignment.

**Request**

The following is an example of the request. Use the **id** from the previous request for the **appId** property value.

```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "distributeForStudentWork": false,
    "resource": {
        "contentUrl": "https://sd-prod-us-web-galileo.azurewebsites.net/assets/content.html",
        "appId": "7caaa66b-34b0-4c15-a65d-dba6edf0c8fd",
        "appIconUrl": "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/7caaa66b-34b0-4c15-a65d-dba6edf0c8fd_largeImage.png?v=1.3.0",
        "displayName": "School Day",
        "websiteUrl": "https://sd-prod-us-web-galileo.azurewebsites.net/",
        "@odata.type": "#microsoft.graph.educationTeamsAppResource"
    }
}
```

**Response**

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('1618dfb0-3ff2-4edf-8d5c-b8f81df00e80')/resources/$entity",
    "distributeForStudentWork": false,
    "status": "published",
    "id": "de220fbc-865a-4c8e-a013-fc5dabe0f817",
    "resource": {
        "@odata.type": "#microsoft.graph.educationTeamsAppResource",
        "displayName": "School Day",
        "createdDateTime": "2022-12-21T02:17:01.9365101Z",
        "lastModifiedDateTime": "2022-12-21T02:17:01.9365342Z",
        "appId": "7caaa66b-34b0-4c15-a65d-dba6edf0c8fd",
        "appIconUrl": "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/7caaa66b-34b0-4c15-a65d-dba6edf0c8fd_largeImage.png?v=1.3.0",
        "contentUrl": "https://sd-prod-us-web-galileo.azurewebsites.net/assets/content.html",
        "websiteUrl": "https://sd-prod-us-web-galileo.azurewebsites.net/",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

3. The Teams App is now added to the assignment and is available for students to launch.

For an example that shows how to integrate a Teams app with an assignment, see [Example 7: Create an educationTeamsAppResource](/graph/api/educationassignment-post-resources#example-7-create-an-educationteamsappresource).

## Permissions

The assignments API supports both delegated (per user) and app-only (per app) permissions. For ease of use for the student and teacher, app-only permissions are preferred. This allows for approval of your app only to retrieve data.
