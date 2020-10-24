---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: enumTypes
---

### cloudPcDeviceImageStatus enum type

Possible image status

|Members|Value|Description|
|:---|:---|:---|
|pending|0|The image upload is in progress|
|ready|1|The image is ready for use on Cloud PCs|
|failed|2|Failed to upload the image|

### cloudPcDeviceImageStatusDetails enum type

Possible image status details

|Members|Value|Description|
|:---|:---|:---|
|internalServerError|0|There was an internal server error while processing the image|
|sourceImageNotFound|1|Source image is inaccessible or not found|

### cloudPcProvisioningPolicyImageType values

Possible types of images that can be used in a provisioning policy

|Members|Value|Description|
|:---|:---|:---|
|custom|0|The image type is custom|
|gallery|1|The image type is gallery|
