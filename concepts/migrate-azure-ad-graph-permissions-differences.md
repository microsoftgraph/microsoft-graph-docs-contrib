---
title: "Permissions differences between Azure AD Graph and Microsoft Graph"
description: "Describes permissions differences between Azure Active Directory (Azure AD) Graph API and Microsoft Graph API (REST)."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.localizationpriority: medium
ms.prod: "applications"
ms.date: 11/11/2022
---

# Permissions differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

The least privileged permission for a specific scenario might be different between Azure AD Graph and Microsoft Graph. When migrating your apps to call Microsoft Graph, analyze whether you also need to migrate to more narrowly scoped Microsoft Graph permissions to maintain least privilege.

For example, on Azure AD Graph, reading users in app-only scenarios requires the *Directory.Read.All* permission. This permission also allows your app to read all the groups, apps, and some policies in your tenant. However, on Microsoft Graph, reading users in app-only scenarios requires only the *User.Read.All* permission.

While the permission strings might be the same in both Azure AD Graph and Microsoft Graph, they have different identifiers. However, similar to Azure AD Graph, Microsoft Graph also exposes both application and delegated permissions. In addition, admin consent is always required for application permissions.

The article provides a mapping of Azure AD Graph to Microsoft Graph permissions to help you migrate your apps.

## Application.Read.All

### Delegated

| Parameter               | Azure AD Graph | Microsoft Graph                      |
|--------------------------|-----------------|---------------------------------------|
| Permission ID           | Not available  | c79f8feb-a9db-4090-85f9-90d820caa0eb |
| Display String          | Not available  | Read applications                    |
| Admin consent required? | Not available  | Yes                                  |

### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 3afa6a7d-9b1a-42eb-948e-1650a849e176 | 9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30 |
| Display String | Read all applications                | Read all applications                |

---

## Application.ReadWrite.All

### Delegated

| Parameter               | Azure AD Graph | Microsoft Graph                      |
|--------------------------|-----------------|---------------------------------------|
| Permission ID           | Not available  | bdfbf15f-ee85-4955-8675-146e8e5296b5 |
| Display String          | Not available  | Read and write all applications      |
| Admin consent required? | Not available  | Yes                                  |

### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 1cda74f2-2616-4834-b122-5cb1b07f8a59 | 1bfefb4e-e0b5-418b-a88f-73c46d2cc8e9 |
| Display String | Read and write all applications      | Read all applications                |

---

## Application.ReadWrite.OwnedBy

### Delegated

Not applicable.

### Application

| Parameter      | Azure AD Graph                            | Microsoft Graph                           |
|-----------------|--------------------------------------------|--------------------------------------------|
| Permission ID  | 1cda74f2-2616-4834-b122-5cb1b07f8a59      | 18a4783c-866b-4cc7-a460-3d5e5662c884      |
| Display String | Manage apps that this app creates or owns | Manage apps that this app creates or owns |

---

## Device.ReadWrite.All

### Delegated

Not applicable.

### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 1138cb37-bd11-4084-a2b7-9f71582aeddb | 1138cb37-bd11-4084-a2b7-9f71582aeddb |
| Display String | Read and write devices               | Read and write devices               |

---

## Directory.Read.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 5778995a-e1bf-45b8-affa-663a9f3f4d04 | 06da0dbc-49e2-44d2-8312-53f166ab848a |
| Display String          | Read directory data                  | Read directory data                  |
| Admin consent required? | Yes                                  | Yes                                  |


### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 5778995a-e1bf-45b8-affa-663a9f3f4d04 | 7ab1d382-f21e-4acd-a863-ba3e13f7da61 |
| Display String | Read directory data                  | Read directory data                  |

---

## Directory.ReadWrite.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 78c8a3c8-a07e-4b9e-af1b-b5ccab50a175 | c5366453-9fb0-48a5-a156-24f0c49a4b84 |
| Display String          | Read and write directory data        | Read and write directory data        |
| Admin consent required? | Yes                                  | Yes                                  |


### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 78c8a3c8-a07e-4b9e-af1b-b5ccab50a175 | 19dbc75e-c2e2-444c-a770-ec69d8559fc7 |
| Display String | Read and write directory data        | Read and write directory data        |

---

## Directory.AccessAsUser.All

### Delegated

| Parameter               | Azure AD Graph                             | Microsoft Graph                            |
|--------------------------|---------------------------------------------|---------------------------------------------|
| Permission ID           | a42657d6-7f20-40e3-b6f0-cee03008a62a       | 0e263e50-5827-48a4-b97c-d940288653c7       |
| Display String          | Access the directory as the signed-in user | Access the directory as the signed-in user |
| Admin consent required? | Yes                                        | Yes                                        |


### Application

Not applicable.

---

## Domain.ReadWrite.All

### Delegated

| Parameter               | Azure AD Graph | Microsoft Graph        |
|--------------------------|-----------------|-------------------------|
| Permission ID           | Not available  | Read and write domains |
| Display String          | Not available  | Read and write domains |
| Admin consent required? | Not available  | Yes                    |


### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | abefe9df-d5a9-41c6-a60b-27b38eac3efb | 7e05723c-0bb0-42da-be95-ae9f08a6e53c |
| Display String | Read and write domains               | Read and write domains               |

---

## Group.Read.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 6234d376-f627-4f0f-90e0-dff25c5211a3 | 5f8c59db-677d-491f-a6b8-5f174b11ec1d |
| Display String          | Read all groups                      | Read all groups                      |
| Admin consent required? | Yes                                  | Yes                                  |


### Application

|-----------------|-----------------|---------------------------------------|
| ----------------- | ----------------- | ------------------                   |
| Permission ID  | Not available  | 5b567255-7703-4780-807c-7be8301ae99b |
| Display String | Not available  | Read all groups                      |

---

## Group.ReadWrite.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 970d6fa6-214a-4a9b-8513-08fad511e2fd | 4e46008b-f24c-477d-8fff-7bb4ec7aafe0 |
| Display String          | Read and write all groups            | Read and write all groups            |
| Admin consent required? | Yes                                  | Yes                                  |


### Application

| Parameter      | Azure AD Graph | Microsoft Graph                      |
|-----------------|-----------------|---------------------------------------|
| Permission ID  | Not available  | 62a82d76-70ea-41e2-9197-370581804d09 |
| Display String | Not available  | Read and write all groups            |

---

## Member.Read.Hidden

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 2d05a661-f651-4d57-a595-489c91eda336 | f6a3db3e-f7e8-4ed2-a414-557c8c9830be |
| Display String          | Read hidden memberships              | Read hidden memberships              |
| Admin consent required? | Yes                                  | Yes                                  |


### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 9728c0c4-a06b-4e0e-8d1b-3d694e8ec207 | 658aa5d8-239f-45c4-aa12-864f4fc7e490 |
| Display String | Read all hidden memberships          | Read all hidden memberships          |

---

## Policy.Read.All

### Delegated

| Parameter               | Azure AD Graph | Microsoft Graph                      |
|--------------------------|-----------------|---------------------------------------|
| Permission ID           | Not available  | 572fea84-0151-49b2-9301-11cb16974376 |
| Display String          | Not available  | Read your organization's policies    |
| Admin consent required? | Not available  | Yes                                  |


### Application

| Parameter      | Azure AD Graph                       | Microsoft Graph                      |
|-----------------|---------------------------------------|---------------------------------------|
| Permission ID  | 6c2d1b1d-a490-4178-ba6b-7efceda9129b | 246dd0d5-5bd0-4def-940b-0421030a5b68 |
| Display String | Read your organization's policies    | Read your organization's policies    |

---

## User.Read

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | 311a71cc-e848-46a1-bdf8-97ff7156d8e6 | e1fe6dd8-ba31-4d61-89e7-88639da4683d |
| Display String          | Sign in and read user profile        | Sign in and read user profile        |
| Admin consent required? | No                                   | No                                   |


### Application

Not applicable.

---

## User.ReadBasic.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | cba73afc-7f69-4d86-8450-4978e04ecd1a | b340eb25-3456-403f-be2f-af7a0d370277 |
| Display String          | Read all users' basic profiles       | Read all users' basic profiles       |
| Admin consent required? | No                                   | No                                   |


### Application

| Parameter      | Azure AD Graph | Microsoft Graph                      |
|-----------------|-----------------|---------------------------------------|
| Permission ID  | Not available  | 97235f07-e226-4f63-ace3-39588e11d3a1 |
| Display String | Not available  | Read all users' basic profiles       |

---

## User.Read.All

### Delegated

| Parameter               | Azure AD Graph                       | Microsoft Graph                      |
|--------------------------|---------------------------------------|---------------------------------------|
| Permission ID           | c582532d-9d9e-43bd-a97c-2667a28ce295 | a154be20-db9c-4678-8ab7-66f6cc099a59 |
| Display String          | Read all users' full profiles        | Read all users' full profiles        |
| Admin consent required? | Admin                                | Admin                                |


### Application

| Parameter      | Azure AD Graph | Microsoft Graph                      |
|-----------------|-----------------|---------------------------------------|
| Permission ID  | Not available  | df021288-bdef-4463-88db-98f22de89214 |
| Display String | Not available  | Read all users' full profiles        |

---

## Next Steps

- Learn how to [examine API differences](migrate-azure-ad-graph-audit-api-use.md) in your app between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.
