---
title: Approvals app APIs
description: Learn the different types of the approvals app Microsoft Graph APIs for personal and non-Microsoft apps, its use cases, and benefits.
ms.topic: reference
ms.localizationpriority: medium
ms.author: v-sdhakshina
ms.date: 07/10/2024
---

# Approvals app APIs

The Approvals app in Microsoft Teams is a native application that allows users to create, manage, and share approval requests directly from their Teams environment. It integrates with Power Automate to streamline workflows and bring auditing, compliance, and accountability into both structured and unstructured approval processes.

The approvals app API allows you to integrate approval workflows into both Teams app and non-Microsoft apps. You can create new approvals, update existing ones, and list all approvals. The API enables you to: create, update, and list approvals; assign approvals to users; specify custom responses; and receive notifications in Teams. As these APIs support graph subscriptions, you can send notifications for approval responses. The Approvals app is available as a personal app for all Teams users.

The approval app APIs in Microsoft Graph enable the following use cases:

**Automate approval workflows**: The API allows you to create and manage approval requests, which is helpful for automating workflows that need approvals, such as document sign-offs or expense approvals.

**Integrate with other services**: The API allows for integration with other services and applications. For example, you can set up a workflow where an approval request in Teams triggers an action in another system. Such an action could update a record in a CRM or send a notification through another communication platform.

**Customize approval processes**: With this API, you can customize the approval process to fit your organization’s needs. For example, you can set up multi-stage approvals, conditional approvals based on certain criteria, or approvals that integrate with custom-built applications within your organization.

**Track and report**: The API can be used to track the status of approval requests and generate reports on approval activities. Tracking and reporting can help organizations maintain awareness of pending approvals, monitor the efficiency of approval processes, and ensure compliance with internal policies.

**Improve user experience**: By using the API, you can create custom experiences within Teams that streamline the approval process for users. For example, you can create bots that assist with creating and managing approvals. You can also build custom interfaces that make it easier for users to review and respond to approval requests.

The following table lists the APIs available across Microsoft Graph for the approvals app:

| API | Description |
| ---- | ---- |
| [Approval item](/graph/api/resources/approvalitem?view=graph-rest-beta&preserve-view=true) | Represents a request for approval, encompassing related decisions, status, and responses. You can create new approval items, view sent or received approval items, and perform actions on these approval items. |
| [Approval solution](/graph/api/resources/approvalsolution?view=graph-rest-beta&preserve-view=true) | Represents the provisioning status of the approval solution for a tenant. |
| [Approval item request](/graph/api/resources/approvalitemrequest?view=graph-rest-beta&preserve-view=true) | Represents a request created for each approver on `approvalItem`. |
| [Approval item response](/graph/api/resources/approvalitemresponse?view=graph-rest-beta&preserve-view=true) | Represents a response to an approval item request. |
| [Approval item view point](/graph/api/resources/approvalitemviewpoint?view=graph-rest-beta&preserve-view=true) |Represents the user's roles for an `approvalItem`.|
| [Approval operation](/graph/api/resources/approvaloperation?view=graph-rest-beta&preserve-view=true) | Represents the status and details for an operation performed on `approvalItem`.|

## Key benefits of the Approvals app

The Approvals app centralizes and simplifies the approval of expense requests, project requests, task requests, and more. The following list explains some of the benefits that result:

* Reduces time and effort required to manage approvals by automating the workflow and notification process.
* Centralizes tracking, management, and auditing, which offers greater transparency into the approval process.
* Manages approvals consistently across various departments and teams.
* Enforces compliance with policy by enabling organizations to ensure that all necessary approvals are obtained before action is taken.

## See also

[Manage the approvals app in Microsoft Teams](/microsoftteams/approval-admin)
