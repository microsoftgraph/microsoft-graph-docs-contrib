---
title: "Managing information barriers for file storage containers"
description: "Learn about the Microsoft Graph API for managing information barriers in file storage containers and how it helps enforce collaboration restrictions."
ms.localizationpriority: medium
ms.subservice: "onedrive"
ms.custom: scenarios:getting-started
ms.date: 10/23/2025
ms.topic: concept-article
---

# Managing information barriers for file storage containers

The Microsoft Graph API for **information barriers** in file storage containers enables organizations to enforce compliance and collaboration restrictions. By applying information barrier (IB) policies, you can prevent communication and sharing between specific user segments, ensuring regulatory or business requirements are met.

## Stamp information barriers during file a storage container creation

When **information barriers (IB)** are enabled for a tenant, the IB settings are automatically applied (or *stamped*) on newly created containers. The behavior depends on the authentication type and the creating user's IB configuration.

### App-only authentication

When using app-only authentication:
- The container is created in the default **Open** IB mode, with no IB segments.
- Optionally, the app can specify the IB mode and segments in the request payload.

### Delegated authentication

When a user context is present, the container inherits IB settings based on the creating user's configuration:

- **User has a single IB segment:**
  - The container’s IB mode is set to **Explicit**.
  - The container’s IB segments include the user’s IB segment and other compatible segments in the tenant.

- **User has multiple IB segments:**
  - The container’s IB mode is set to **ownerModerated**.
  - The container’s IB segments are empty.

- **User has no IB segment:**
  - The container’s IB mode is set to **Open**.
  - The container’s IB segments are empty.

### Specify information barriers with app-only authentication

The following example shows how to specify an information barrier with app-only authentication when creating a container.

```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers?$select=id,displayName,informationBarrier
Content-Type: application/json

{
  "displayName": "My Application Storage Container",
  "description": "Description of My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "informationBarrier": {
    "mode": "Explicit",
    "segmentIds": [
      "7c94cec9-4ef6-48e4-bb99-9ff01c9b3a79"
    ]
  }
}
```
## Update information barrier

Admins can update information barriers for a file storage container. Container owners and principal owners can add segments only to containers that already have associated segments. However, they can’t create new segments, modify existing segment policies, associate segments with nonsegmented sites, or remove segments. Additionally, updates to a user’s information barrier settings don’t automatically change the IB mode or segment configuration of existing containers.

The following example shows how to update information barriers for a file storage container using the Update fileStorageContainer API.

```http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z?$select=id,displayName,informationBarrier
Content-Type: application/json

{
  "displayName": "Updated Name",
  "description": "Updated Description",
  "informationBarrier": {
    "mode": "Explicit",
    "segmentIds": [
      "7c94cec9-4ef6-48e4-bb99-9ff01c9b3a79"      
    ]
  }
}
```
## Disable information barriers

If information barriers are disabled for a tenant, all IB access enforcement stops. However, the existing IB settings on containers are retained. If information barriers are re-enabled, enforcement resumes based on the previously configured settings.

## Explicit select

Explicitly select this property to include it in the response, for example:  
`?$select=informationBarrier`

## API reference

- [API reference overview in Microsoft Graph beta](/graph/api/resources/filestoragecontainer)

## Related content

- [Information barriers in Microsoft 365](/microsoft-365/compliance/information-barriers)
- [Authentication and authorization basics](/graph/auth/auth-concepts)
