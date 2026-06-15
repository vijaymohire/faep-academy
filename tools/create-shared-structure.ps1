# create-shared-structure.ps1
# Creates common shared folder hierarchy for FAEP Academy
# Does NOT create README.md files

Write-Host "Creating shared folder structure..."

# assets
New-Item -ItemType Directory -Path "assets\icons" -Force | Out-Null
New-Item -ItemType Directory -Path "assets\logos" -Force | Out-Null
New-Item -ItemType Directory -Path "assets\banners" -Force | Out-Null
New-Item -ItemType Directory -Path "assets\covers" -Force | Out-Null

# diagrams
New-Item -ItemType Directory -Path "diagrams\campus" -Force | Out-Null
New-Item -ItemType Directory -Path "diagrams\cloud40" -Force | Out-Null
New-Item -ItemType Directory -Path "diagrams\industry50" -Force | Out-Null
New-Item -ItemType Directory -Path "diagrams\society50" -Force | Out-Null
New-Item -ItemType Directory -Path "diagrams\qai" -Force | Out-Null
New-Item -ItemType Directory -Path "diagrams\faep" -Force | Out-Null

# images
New-Item -ItemType Directory -Path "images\campus" -Force | Out-Null
New-Item -ItemType Directory -Path "images\qai" -Force | Out-Null
New-Item -ItemType Directory -Path "images\blueprints" -Force | Out-Null
New-Item -ItemType Directory -Path "images\social_posts" -Force | Out-Null

# notebooks
New-Item -ItemType Directory -Path "notebooks\beginner" -Force | Out-Null
New-Item -ItemType Directory -Path "notebooks\intermediate" -Force | Out-Null
New-Item -ItemType Directory -Path "notebooks\advanced" -Force | Out-Null

# samples
New-Item -ItemType Directory -Path "samples\python" -Force | Out-Null
New-Item -ItemType Directory -Path "samples\api" -Force | Out-Null
New-Item -ItemType Directory -Path "samples\notebooks" -Force | Out-Null

# templates
New-Item -ItemType Directory -Path "templates\markdown" -Force | Out-Null
New-Item -ItemType Directory -Path "templates\blueprints" -Force | Out-Null
New-Item -ItemType Directory -Path "templates\research" -Force | Out-Null
New-Item -ItemType Directory -Path "templates\sprints" -Force | Out-Null

# references
New-Item -ItemType Directory -Path "references\books" -Force | Out-Null
New-Item -ItemType Directory -Path "references\papers" -Force | Out-Null
New-Item -ItemType Directory -Path "references\websites" -Force | Out-Null

# blueprints
New-Item -ItemType Directory -Path "blueprints\campus" -Force | Out-Null
New-Item -ItemType Directory -Path "blueprints\cloud40" -Force | Out-Null
New-Item -ItemType Directory -Path "blueprints\industry50" -Force | Out-Null
New-Item -ItemType Directory -Path "blueprints\society50" -Force | Out-Null
New-Item -ItemType Directory -Path "blueprints\qai" -Force | Out-Null

Write-Host "Shared folder structure created successfully."