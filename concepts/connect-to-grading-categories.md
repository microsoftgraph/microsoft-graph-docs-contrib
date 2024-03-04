---
title: "Create and update grading categories"
description: "Teachers can use grading categories to weight assignments in the class grade."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: conceptualPageType
---

# Grading Categories

A grading category is a property on an assignment setting resource, which in turn belongs to a class. You can access a grading category through its containing assignment settings object, or through its class.
Teachers can use grading categories to weight assignments in the class grade. For example, a class could have 60% of its grade come from "Homework" assignments and 40% from "Test" assignments.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get a class

Get the list of classes from your education tenant and locate the class where you want to set grading categories.

- [Get Class](/graph/api/educationclass-get): Take the classid from the previous request and use it to get the information for that specific class.

```http
GET https://graph.microsoft.com/beta/education/classes
```

## Get assignment settings

Assignments contain handouts and tasks that the teacher wants the student to work on. Each student assignment has an associated submission that contains any work their teacher asked to be turned in. Only teachers or team owners can create assignments. A teacher can add scores and feedback to the submission turned in by the student:

- [Get assignment settings](/graph/api/educationassignmentsettings-get): Allows you to see if the assignment settings have any grading categories information already added.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
```

## Create grading categories

**Request**

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
  "gradingCategories": [
        {
            "displayName": "Lab",
            "percentageWeight": 10
        },
        {
            "displayName": "Homework",
            "percentageWeight": 80
        },
        {
            "displayName": "Test",
            "percentageWeight": 10
        }
    ]
}
```

**Response**

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
  "submissionAnimationDisabled": false,
  "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
  "gradingCategories": [
      {
          "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
          "displayName": "Lab",
          "percentageWeight": 10
      },
      {
          "id": "6fd19981-588f-495c-91a8-712a645c95b7",
          "displayName": "Homework",
          "percentageWeight": 80
      },
      {
          "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
          "displayName": "Test",
          "percentageWeight": 10
      }
  ]
}
```

## Get grading categories for an assignment

Get a list of the education Grading Category objects and their properties.:

- [Get grading categories for an assignment](/graph/api/educationassignment-list-gradingcategory): Lists grading categories for an assignment.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
```

## Post a grading category

Update an existing grading category



- [Post a grading category](/graph/api/educationassignment-post-gradingcategory): This is used to update a grading category.

```http
PUT /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

**Request**

The following example shows a request. 

```http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
```

**Response**

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Update a grading category

Update a single gradingCategory 

- [Update single gradingCategory](/graph/api/educationgradingcategory-update): This is used to update a single gradingCategory.

### Example 1: Update a single grading category

```http
PATCH /education/classes/{classId}/assignmentSettings/gradingCategories/{gradingCategoryId}
```

**Request**

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398
Content-type: application/json

Request Body
{
    "displayName": "Test updated"
}
```

**Response**

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories/$entity",
    "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
    "displayName": "Test updated",
    "percentageWeight": 30
}
```
### Example 2: Use a delta payload to create, update and/or delete grading categories

```http
PATCH /education/classes/{classId}/assignmentSettings/
```

**Request**

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            // Change this grading category's name
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test"
        },
        {
            // Delete this grading category
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "deleted"
        },
        {
            // Add a new grading category
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

**Response**

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "fb4a4009-3cc4-4dea-9991-e0a0763659e3",
            "displayName": "Homework",
            "percentageWeight": 30
        },
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test",
            "percentageWeight": 30
        },
        {
            "id": "d47d7a3f-44a1-47e1-8aec-68b028f64b2e",
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "id": "021db844-0f03-4483-929d-1c1dbfd4fcb4",
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

## Delete grading categories

Remove a grading category 

- [Remove gradingCategory](/graph/api/educationassignment-delete-gradingcategory): This is used to remove gradingCategory.

```http
DELETE /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

**Request**

The following example shows a request. 

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0bcb37af-3676-47ef-ae93-8de22ce5ff1d/gradingCategory/$ref
```

**Response**

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Permissions

The assignments API supports delegated (per user) only. 