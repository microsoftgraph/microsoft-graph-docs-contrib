---
title: "Create an assignment with a Speaker Progress resource"
description: "Learn how to use Microsoft Graph to create an assignment with a Speaker Progress resource."
ms.localizationpriority: medium
author: "GatadiMegha"
ms.subservice: "education"
doc_type: conceptualPageType
ms.date: 07/16/2025
---

# Create an assignment with a Speaker Progress resource

This article describes how to create an assignment with [Speaker Progress resource](/graph/api/resources/educationspeakerprogressresource).

## Create the new assignment

An assignment represents a task or unit of work assigned to a student or team member in a class as part of their study. You can use the [Create educationAssignment](/graph/api/educationclass-post-assignment) API to create a new assignment for the class.

## Add the speaker progress resource

 You can use the [Create educationAssignmentResource](/graph/api/educationassignment-post-resources?view=graph-rest-beta&tabs=http#example-8-create-an-educationspeakerprogressresource) API to create and attach the Speaker Progress resource to an assignment. This operation requires you to provide a [educationSpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource?view=graph-rest-beta) in the request body.

## Get the Speaker Progress resource

 Retrieve the created Speaker Progress resource by calling the [Get educationAssignmentResource](/graph/api/educationassignmentresource-get) API using the resource ID obtained in the previous step.

 To view all resources associated with a specific assignment, you can use the [list assignment resources](/graph/api/educationassignment-list-resources) API.

## Permissions

The teacher role is required to add a speaker progress resource to assignments.
