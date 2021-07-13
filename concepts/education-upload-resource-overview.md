---
title: "Education upload resource overview"
description: "Upload a file to a given educationAssignment or educationSubmission resource."
localization_priority: Normal
author: "sharad-sharma-msft"
ms.prod: "education"
doc_type: apiPageType
---

# Education upload resource overview

Resources are an integral part of [educationAssignment](/graph/api/resources/educationassignment.md) and [educationSubmission](/graph/api/resources/educationsubmission.md). 

Teacher determines the resources to upload in the assignment's folder, and a student determines the resources to upload in the submission's folder.

## Pre-condition

Setup a SharePoint folder to upload files for a given assignment or submission. 

| Action  |
|:--------|
| Setup a SharePoint folder for a given [educationAssignment](/graph/api/resources/educationAssignment.md) resource|
| Setup a SharePoint folder for a given [educationSubmission](/graph/api/resources/educationSubmission.md) resource|

## Upload a resource

At this point, we are assuming that you have setup the relevant resource folder already. 
The `setUpResourcesFolder` API returns a model with one of the property called `resourcesFolderUrl`.
```http
{
    ...

    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GFA"
    ...
}
```

Following steps will allow you to upload a resource/file to the relevant resource folder. For simplicity, we are going to upload a SPO resource to the assignment. You can follow similar steps to upload a SPO resource to the submission.

### Step 1 - Construct the upload url
Build the url for uploading content in a specific format. The format is `{resourcesFolderUrl}:/{Name of new file}:/content`, 
e.g. based on the sample `resourcesFolderUrl`, the upload url will be:
```http
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
```

### Step 2 - Upload the resource to SPO

PUT `{upload Url}` to upload the content. Refer to [this](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0&preserve-view=true) documentation for more details.

#### Example Request
```http
PUT https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
```
#### Example Request body
The contents of the request body should be the binary stream of the file to be uploaded.

#### Example Response
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#drives('b%216SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F')/items/$entity",
    "@microsoft.graph.downloadUrl": "...",
    "createdDateTime": "2021-03-11T18:49:47Z",
    "eTag": "\"{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},1\"",
    "id": "01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
    "lastModifiedDateTime": "2021-03-11T18:49:47Z",
    "name": "NewFile.png",
    "webUrl": "https://contososdorg.sharepoint.com/sites/GraphTest/Class%20Files/Assignments/Test%20File%20Distribution/NewFile.png",
    "cTag": "\"c:{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},2\"",
    "size": 2302233,
    "createdBy": {
        "application": {
            "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "displayName": "Graph explorer"
        },
        "user": {
            "email": "t-james@contososd.org",
            "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
            "displayName": "James"
        }
    },
    "lastModifiedBy": {
        "application": {
            "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "displayName": "Graph explorer"
        },
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

### Step 3 - Construct the `fileUrl`
Format is `https://graph.microsoft.com/v1.0/drives/{drive-id from request url in step 2}/items/{id from the response body in step 2}`
e.g. for the sample upload case

drive-id = b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F, and 

id = 01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ

Following the format, the `fileUrl` will look like this-
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ

### Step 4. POST assignment resource
Use the `fileUrl` constructed above in the request body to [POST Assignment Resources](/graph/api/educationassignment-post-resources)

#### Example Request 
```http
POST https://graph.microsoft.com/v1.0/education/classes/b07edbef-7420-4b3d-8f7c-d599cf21e069/assignments/48b80dff-452a-4108-bd85-fa0d84e39d0a/resources
```
#### Example Request body
```http
{
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
        "displayName": "Parts of a Sonnet"
    }
}
```

#### Example Response
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('b07edbef-7420-4b3d-8f7c-d599cf21e069')/assignments('48b80dff-452a-4108-bd85-fa0d84e39d0a')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "ff1aafe4-ae89-49c3-8366-4b509f640d6a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Parts of a Sonnet",
        "createdDateTime": "2021-03-11T18:35:40.6642039Z",
        "lastModifiedDateTime": "2021-03-11T18:35:40.6642039Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
                "displayName": null
            }
        }
    }
}
```

You have now successfully associated an SPO resource to an assignment. You can follow similar steps to upload student work resource(s).

Reference: [POST Submission Resources](/graph/api/educationsubmission-post-resources)