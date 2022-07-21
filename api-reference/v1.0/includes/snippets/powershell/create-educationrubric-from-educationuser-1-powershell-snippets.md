---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	DisplayName = "Example Credit Rubric"
	Description = @{
		Content = "This is an example of a credit rubric (no points)"
		ContentType = "text"
	}
	Levels = @(
		@{
			DisplayName = "Good"
			Description = @{
				Content = ""
				ContentType = "text"
			}
		}
		@{
			DisplayName = "Poor"
			Description = @{
				Content = ""
				ContentType = "text"
			}
		}
	)
	Qualities = @(
		@{
			Description = @{
				Content = "Argument"
				ContentType = "text"
			}
			Criteria = @(
				@{
					Description = @{
						Content = "The essay's argument is persuasive."
						ContentType = "text"
					}
				}
				@{
					Description = @{
						Content = "The essay's argument does not make sense."
						ContentType = "text"
					}
				}
			)
		}
		@{
			Description = @{
				Content = "Spelling and Grammar"
				ContentType = "text"
			}
			Criteria = @(
				@{
					Description = @{
						Content = "The essay uses proper spelling and grammar with few or no errors."
						ContentType = "text"
					}
				}
				@{
					Description = @{
						Content = "The essay has numerous errors in spelling and/or grammar."
						ContentType = "text"
					}
				}
			)
		}
	)
}

New-MgEducationMeRubric -BodyParameter $params

```