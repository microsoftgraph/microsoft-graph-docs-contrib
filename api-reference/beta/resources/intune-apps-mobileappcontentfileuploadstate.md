---
title: "mobileAppContentFileUploadState enum type"
description: "Contains properties for upload request states."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppContentFileUploadState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for upload request states.

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0||
|transientError|1||
|error|2||
|unknown|3||
|azureStorageUriRequestSuccess|100||
|azureStorageUriRequestPending|101||
|azureStorageUriRequestFailed|102||
|azureStorageUriRequestTimedOut|103||
|azureStorageUriRenewalSuccess|200||
|azureStorageUriRenewalPending|201||
|azureStorageUriRenewalFailed|202||
|azureStorageUriRenewalTimedOut|203||
|commitFileSuccess|300||
|commitFilePending|301||
|commitFileFailed|302||
|commitFileTimedOut|303||