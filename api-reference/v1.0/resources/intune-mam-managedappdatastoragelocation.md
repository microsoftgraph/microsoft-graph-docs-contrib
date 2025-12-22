---
title: "managedAppDataStorageLocation enum type"
description: "The storage locations where managed apps can potentially store their data."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppDataStorageLocation enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The storage locations where managed apps can potentially store their data.

## Members
|Member|Value|Description|
|:---|:---|:---|
|oneDriveForBusiness|1|Indicates allowed storage location for the managed app to save files is 'OneDrive for Business'.|
|sharePoint|2|Indicates allowed storage location for the managed app to save files is 'Sharepoint'.|
|box|3|Indicates that the allowed storage location for a managed app to save files is to 'Box'. Box is a non-Microsoft solution that enables cloud-based file storage capabilities.|
|localStorage|6|Indicates allowed storage location for the managed app to save files is local storage on the device.|