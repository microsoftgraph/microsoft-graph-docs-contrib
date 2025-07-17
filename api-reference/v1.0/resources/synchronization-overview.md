---
title: "Microsoft Entra ID synchronization API overview"
description: "Automate the provisioning of identities from HR systems, Active Directory, and Microsoft Entra ID to cloud applications."
ms.localizationpriority: medium
doc_type: conceptualPageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 05/20/2024
---

# Microsoft Entra ID synchronization API overview

Namespace: microsoft.graph

Microsoft Entra identity synchronization (also called "provisioning") allows you to automate the provisioning (creation, maintenance) and de-provisioning (removal) of identities from any of the following:
- Active Directory to Microsoft Entra ID
- Workday to Microsoft Entra ID
- Microsoft Entra ID to cloud applications such as Dropbox, Salesforce, ServiceNow, and more 

You can use the synchronization APIs in Microsoft Graph to manage identity synchronization programmatically, including:

- Create, start, and stop synchronization jobs
- Make changes to the synchronization schema for jobs
- Verify the current synchronization status

For more information about synchronization in Microsoft Entra ID, see:

* [Automate user provisioning and deprovisioning to SaaS applications with Microsoft Entra ID](/azure/active-directory/active-directory-saas-app-provisioning)
* [Managing user account provisioning for enterprise apps in the Microsoft Entra admin center](/azure/active-directory/active-directory-enterprise-apps-manage-provisioning)

You can also try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) in a sample tenant or your own tenant.

## Synchronization job

Synchronization jobs perform synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory. The synchronization job is always specific to a particular instance of an application in your tenant. As part of the synchronization job setup, you need to give authorization to read and write objects in your target directory, and customize the job's synchronization schema.

For more information, see [synchronization job](synchronization-synchronizationjob.md).

## Synchronization schema

The synchronization schema defines what objects will be synchronized and how they will be synchronized. The synchronization schema contains most of the setup information for a particular synchronization job. Typically, you will customize some of the [attribute mappings](synchronization-attributemapping.md), or add a [scoping filter](synchronization-filter.md) to synchronize only objects that satisfy a certain condition.

The synchronization schema includes the following components:

- Directory definitions
- Synchronization rules
- Object mappings

For more information, see [synchronization schema](synchronization-synchronizationschema.md).

## Synchronization template

The synchronization template provides pre-configured synchronization settings for a particular application. These settings (most importantly, [synchronization schema](synchronization-synchronizationschema.md)) will be used by default for any [synchronization job](synchronization-synchronizationjob.md) that is based on the template. Templates are specified by the application developer.

For more information, see [synchronization template](synchronization-synchronizationtemplate.md).

## Working with the synchronization API

Working with synchronization API primarily involves accessing the [synchronizationJob](synchronization-synchronizationjob.md) and [synchronizationSchema](synchronization-synchronizationschema.md) resources. To find your [synchronizationJob](synchronization-synchronizationjob.md) resource, you need to know the ID of the service principal object that the synchronization job belongs to. The following examples show you how to work with the **synchronizationJob** and **synchronizationSchema** resources.

### Authorization

To work with the Microsoft Entra ID synchronization APIs, Microsoft Graph supports the following granular permissions:

- Synchronization.Read.All
- Synchronization.ReadWrite.All
- Application.ReadWrite.OwnedBy
- Application.Read.All
- Application.ReadWrite.All

And the following least privileged [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

- Application Administrator
- Cloud Application Administrator
- Hybrid Identity Administrator

For more information about the privileges you need to call each API, visit the respective API reference documentation.

### Find the service principal object by display name

The following example shows how to find service principal object by display name.

#### Request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals?$select=id,appId,displayName&$filter=startswith(displayName, 'salesforce')
```

#### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK

{
   "value":[
      {
         "id":"bc0dc311-87df-48ac-91b1-259bd2c3a31c",
         "appId":"f7808c5e-cb57-4e37-8094-406d302c0f8d",
         "displayName":"Salesforce"
      },
      {
         "id":"d813d7d7-0f41-4edc-b284-d0dfaf399d15",
         "appId":"219561ee-1480-4c67-9aa6-63d861fae3ef",
         "displayName":"salesforce 3"
      }
   ]
}
```

### Find the service principal object by app ID

The following example shows how to find the service principal object by app ID.

**Request**
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='219561ee-1480-4c67-9aa6-63d861fae3ef')?$select=id,appId,displayName
```

**Response**
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK

{
    "value": [
        {
            "id": "d813d7d7-0f41-4edc-b284-d0dfaf399d15",
            "appId": "219561ee-1480-4c67-9aa6-63d861fae3ef",
            "displayName": "salesforce 3"
        }
    ]
}
```

### List existing synchronization jobs

The following example shows you how to list existing synchronization jobs.

**Request**
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals/60443998-8cf7-4e61-b05c-a53b658cb5e1/synchronization/jobs
```

**Response**
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK

{
    "value": [
        {
            "id": "SfSandboxOutDelta.e4bbf44533ea4eabb17027f3a92e92aa",
            "templateId": "SfSandboxOutDelta",
            "schedule": {
                "expiration": null,
                "interval": "PT20M",
                "state": "Active"
            },
            "status": {}
        }
    ]
}
```

### Get synchronization job status
The following example shows you how to get the status of a synchronization job.

**Request**
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals/60443998-8cf7-4e61-b05c-a53b658cb5e1/synchronization/jobs/SfSandboxOutDelta.e4bbf44533ea4eabb17027f3a92e92aa
```

**Response**
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK

{
    "id": "SfSandboxOutDelta.e4bbf44533ea4eabb17027f3a92e92aa",
    "templateId": "SfSandboxOutDelta",
    "schedule": {
        "expiration": null,
        "interval": "PT20M",
        "state": "Active"
    },
    "status": {}
}
```

### Get synchronization schema
The following example shows you how to get the synchronization schema.

**Request**
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
```

**Response**
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK

{
    "directories": [],
    "synchronizationRules": []
}
```
## Related content

* [Configure synchronization with directory extension attributes](/graph/synchronization-configure-with-directory-extension-attributes)
* [Configure synchronization with custom target attributes](/graph/synchronization-configure-with-custom-target-attributes)
