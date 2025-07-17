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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The storage locations where managed apps can potentially store their data.

## Members
|Member|Value|Description|
|:---|:---|:---|
|oneDriveForBusiness|1|Indicates allowed storage location for the managed app to save files is 'OneDrive for Business'.|
|sharePoint|2|Indicates allowed storage location for the managed app to save files is 'Sharepoint'.|
|box|3|Indicates that the allowed storage location for a managed app to save files is to 'Box'. Box is a non-Microsoft solution that enables cloud-based file storage capabilities.|
|localStorage|6|Indicates allowed storage location for the managed app to save files is local storage on the device.|
|photoLibrary|7|Indicates allowed storage location for the managed app to save files is the device's photo library.|
|iManage|8|Indicates that the allowed storage location for a managed app is to save files to 'iManage'. iManage is a non-Microsoft solution that enables cloud-based file storage capabilities.|
|egnyte|9|Indicates that the allowed storage location for a managed app is to save files to 'Egnyte'. Egynte is a non-Microsoft solution that enables cloud-based file storage capabilities.|
|unknownFutureValue|10|Evolvable enumeration sentinel value. Do not use.|