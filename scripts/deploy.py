import os

print("🚀 Starting Deployment...")

# Run Salesforce deploy command
result = os.system("sf project deploy start --source-dir force-app")

if result == 0:
    print("✅ Deployment Completed Successfully")
else:
    print("❌ Deployment Failed")