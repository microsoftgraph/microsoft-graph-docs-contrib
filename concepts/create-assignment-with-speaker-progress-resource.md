---
title: "Create assignment with a Speaker progress resource"
description: "Learn how to use Microsoft Graph to create assignment with Speaker Progress resource."
ms.localizationpriority: medium
author: "Megha Shri G"
ms.subservice: "education"
doc_type: conceptualPageType
ms.date: 16/07/2025
---

# Add Speaker Progress resource in an assignment

This article describes how to create assignment with Speaker Progress resource.

## Create the new assignment

An assignment represents a task or unit of work assigned to a student or team member in a class as part of their study. You can use the [Create educationAssignment](/graph/api/educationclass-post-assignment) API to create a new assignment for the class.

## Add the speaker progress resource

An education Teams app resource allows education service users to create and share assignments with speaker progress resource. You can use the [Create educationAssignmentResource](/graph/api/educationassignment-post-resources?view=graph-rest-beta&tabs=http#example-8-create-an-educationspeakerprogressresource) API to create and load the app resource into an assignment. This operation requires you to provide an [SpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource?view=graph-rest-beta) in the request body.

## Permissions

The teacher role is required to add a speaker progress resource to assignments.
