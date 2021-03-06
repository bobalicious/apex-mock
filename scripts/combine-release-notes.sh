# Parameters:
#   1 - Version Name
#   2 - GitHub Release Tag
#   3 - Unlocked Package Install Command
#   4 - Unlocked Package Link (Prod / Dev Instances)
#   5 - Unlocked Package Link (Sandboxes)

echo "# Version $1" >> RELEASE_NOTES.md.new
echo "" >> RELEASE_NOTES.md.new
echo "* Git Tag                : \`$2\`" >> RELEASE_NOTES.md.new
echo "* SFDX Install           : \`$3\`" >> RELEASE_NOTES.md.new
echo "* Unlocked Package Links :" >> RELEASE_NOTES.md.new
echo "  * $4" >> RELEASE_NOTES.md.new
echo "  * $5" >> RELEASE_NOTES.md.new

sed -E 's/\# Release Notes since Last Release//' PENDING_RELEASE_NOTES.md >> RELEASE_NOTES.md.new

echo "" >> RELEASE_NOTES.md.new
cat RELEASE_NOTES.md >> RELEASE_NOTES.md.new
rm RELEASE_NOTES.md
mv RELEASE_NOTES.md.new RELEASE_NOTES.md

echo "# Release Notes since Last Release" > PENDING_RELEASE_NOTES.md