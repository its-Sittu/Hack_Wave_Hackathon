# Switch to a fresh orphan branch
git checkout --orphan pharmx_human

# Reset staging area
git reset

# Commit 1: Initial setup
git add .editorconfig .gitignore .prettierrc .prettierignore .oxlintrc.json cspell.json eslint.config.js package.json package-lock.json vite.config.js backend/package.json backend/package-lock.json backend/.gitignore backend/.env.example backend/src/app.js src/main.jsx src/App.jsx src/App.css src/index.css
git commit -m "Initial repository setup and environment configuration"

# Commit 2: Assets & Models
git add public/ src/assets/
git commit -m "Add high-resolution 3D anatomical organ models and medication assets"

# Commit 3: Authentication
git add backend/src/config/ backend/src/models/ backend/src/middleware/ backend/src/services/ backend/src/routes/auth.routes.js backend/src/routes/index.js backend/src/controllers/auth.controller.js src/context/ src/components/ProtectedRoute.jsx src/pages/AuthPage.jsx src/styles/auth.css
git commit -m "Setup user authentication with JWT, in-memory database and OTP verification"

# Commit 4: 3D Landing Page
git add index.html src/components/landing/ src/pages/LandingPage.jsx src/styles/landing.css
git commit -m "Build 3D interactive organ canvas and landing page with Three.js"

# Commit 5: Dashboard Layout
git add src/pages/DashboardPage.jsx src/components/dashboard/Sidebar.jsx src/components/dashboard/Header.jsx src/components/dashboard/OverviewCards.jsx src/components/dashboard/RecentChecks.jsx src/components/dashboard/UserProfile.jsx src/components/dashboard/AppSettings.jsx src/components/dashboard/.gitkeep src/styles/dashboard.css
git commit -m "Create patient dashboard UI, vitals summary, and medical records tracker"

# Commit 6: OpenFDA Drug Interaction
git add src/components/dashboard/DrugInteractionChecker.jsx src/components/dashboard/InteractionWarningCard.jsx src/components/dashboard/RiskSeverityIndicator.jsx src/components/dashboard/ActiveWarnings.jsx src/styles/activeWarnings.css
git commit -m "Implement OpenFDA drug interaction checker and clinical risk matrix"

# Commit 7: Alarms, Tracking & Hospital Radar
git add src/components/dashboard/CurrentMedicines.jsx src/components/dashboard/MedicationAlarm.jsx src/components/dashboard/MyHealth.jsx src/components/dashboard/MedicalRecords.jsx src/components/dashboard/HealthAnalytics.jsx src/components/dashboard/NearbyHospitalsMap.jsx src/components/medication/ src/services/ src/utils/activityLogger.js src/styles/medication.css
git commit -m "Add medication alarm reminders with audio ringing and Leaflet hospital GPS radar"

# Commit 8: Gemini Backend Engine (touches backend/)
git add backend/src/server.js backend/src/routes/medicine.routes.js backend/src/controllers/medicine.controller.js backend/src/services/health.service.js backend/src/controllers/health.controller.js backend/src/routes/health.routes.js src/utils/apiConfig.js
git commit -m "Add Google Gemini 2.0 Flash API client with multi-model fallback cascade"

# Commit 9: Gemini AI Frontend Consultation & Symptom Triage (touches src/)
git add src/components/dashboard/MedicineSearch.jsx src/components/dashboard/SymptomChecker.jsx
git commit -m "Integrate Google Gemini AI for real-time medical consultation and clinical symptom triage"

# Commit 10: Production Cloud Deployment
git add render.yaml vercel.json railway.json .github/ scripts/
git commit -m "Configure production deployment for Render and Vercel cloud environments"

# Commit 11: Architecture Blueprint & Master Documentation
git add README.md api-documentation.md architecture-diagram.png presentation.pptx
git commit -m "Add comprehensive system architecture blueprint, presentation deck and project README"

# Replace main branch
git branch -D main
git branch -m main

# Push to GitHub
git push -u origin main --force
