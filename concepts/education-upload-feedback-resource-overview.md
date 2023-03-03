---
title: "Upload feedback files for education submissions"
description: "Learn how to upload a feedback file to a submission resource by using the education API in Microsoft Graph."
ms.localizationpriority: medium
author: "Sureshpadimi88"
ms.prod: "education"
doc_type: conceptualPageType
---

# Upload feedback files for education submissions using the Microsoft Graph API

Resources are an integral part of education [assignments](/graph/api/resources/educationassignment) and [submissions](/graph/api/resources/educationsubmission). Teachers determine the resources to upload to an assignment folder, and students determine the resources to upload to a feedback resources folder.

This article describes how to use the education API in Microsoft Graph to upload files to a feedback resources folder.

## Prerequisites

Before you can upload files, set up a SharePoint folder to upload the files to for a given education assignment or submission resource.

## Upload a resource

The [submission setUpResourcesFolder](/graph/api/educationsubmission-setupresourcesfolder) API returns a model that contains the **resourcesFolderUrl** property.
```http
{
    ...
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GFA"
    ...
}
```

The following steps describe how to upload a resource/file to a relevant resource folder.

### Step 1: Construct the upload URL
Build the URL to upload content following this specific format: `{resourcesFolderUrl}:/{Name of new file}:/content`. The following example shows an upload URL that contains the **resourcesFolderUrl** property.

```http
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
```

### Step 2: Upload the resource to SharePoint
Make a PUT request with the upload URL to upload the content.

The contents of the request body should be the binary stream of the file to be uploaded.

For more details, see [Upload large files with an upload session](/graph/api/driveitem-createuploadsession).

#### Request

The following example shows the request.

```http
PUT https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
Content-Type: text/plain

Binary data for the file
```

#### Response

The following example shows the response.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#drives('b%216SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F')/items/$entity",
    "@microsoft.graph.downloadUrl": "...",
    "createdDateTime": "2021-03-11T18:49:47Z",
    "eTag": "\"{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},1\"",
    "id": "01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
    "lastModifiedDateTime": "2021-03-11T18:49:47Z",
    "name": "MyPictureFile.png",
    "webUrl": "https://contososdorg.sharepoint.com/sites/GraphTest/Class%20Files/Assignments/Test%20File%20Distribution/MyPictureFile.png",
    "cTag": "\"c:{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},2\"",
    "size": 2302233,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "email": "t-james@contososd.org",
            "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
            "displayName": "James"
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "email": "t-james@contososd.org",
            "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
            "displayName": "James"
        }
    },
    "parentReference": {
        "driveId": "b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F",
        "driveType": "documentLibrary",
        "id": "01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2",
        "path": "/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/root:/Assignments/Test File Distribution"
    },
    "file": {
        "mimeType": "image/png",
        "hashes": {
            "quickXorHash": "CvYQxN7MCGrIsdrA38c6wWhOu5g="
        }
    },
    "fileSystemInfo": {
        "createdDateTime": "2021-03-11T18:49:47Z",
        "lastModifiedDateTime": "2021-03-11T18:49:47Z"
    },
    "image": {}
}
```

### Step 3: Construct the value for the fileUrl property
Build the value for the **fileUrl** property using the following format: `https://graph.microsoft.com/v1.0/drives/{drive-id}/items/{item-id}`. Replace the `{drive-id}` and `{item-id}` placeholders with the values described in the following table.

| Placeholder | Description | Example |
|:--|:--|:--|
| `{drive-id}` | Drive ID from the request URL used in step 2. | b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F |
| `{item-id}` | Item ID from the response body obtained in step 2. | 01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ |

The following example shows a **fileUrl** based on this format.

```http
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ
```

### Step 4: Create educationFeedbackResourceOutcome
This step shows how to upload a SharePoint resource to a feedback resources folder.

Use the `fileUrl` from the previous step in the request body to [create an educationFeedbackResourceOutcome](/graph/api/educationfeedbackresourceoutcome-post-outcomes).

#### Request

The following example shows the request.

```http

POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions/2185e6d7-2924-4ed1-dde1-269f89e29184/outcomes
Content-type: application/json

{ 
    "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
    "feedbackResource": {
         "@odata.type": "#microsoft.graph.educationWordResource",
         "displayName": "Document1.docx"
     }
}
```

#### Response

The following example shows the response.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('a3cce0ba-2008-4c4d-bf62-079408562d96')/submissions('2185e6d7-2924-4ed1-dde1-269f89e29184')/outcomes/$entity",
    "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
    "lastModifiedDateTime": "2022-05-06T00:50:30.0772434Z",
    "id": "ba12f282-2190-4958-80b3-42b8afb9626a",
    "resourceStatus": "notPublished",
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    },
    "feedbackResource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Document1.docx",
        "createdDateTime": "2022-05-06T00:50:30.0772177Z",
        "lastModifiedDateTime": "2022-05-06T00:50:30.0772434Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQZQ33I4AJBSURHZJDDQKEJ5TEMJ",
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

You have now successfully uploaded a resource to a feedback resources folder (and attached it to the associated submission). You can follow similar steps to upload one or more feedback resources.

For more details, see [Create educationFeedbackResourceOutcome](/graph/api/educationfeedbackresourceoutcome-post-outcomes).
