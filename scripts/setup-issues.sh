#!/usr/bin/env bash
# للمنظّمين فقط: ينشئ الـlabels وIssue لكل مصطلح في glossary/
# الاستخدام:  ./scripts/setup-issues.sh FAB-LAB-HAIL/git-practice
# يحتاج: GitHub CLI (gh) مع تسجيل دخول: gh auth login
set -euo pipefail

REPO="${1:?اكتب اسم الـrepo مثل: FAB-LAB-HAIL/git-practice}"

gh label create participant   --repo "$REPO" --color 1D75B9 --description "مشارك في الورشة" --force
gh label create glossary      --repo "$REPO" --color F59C43 --description "تعريف مصطلح" --force
gh label create "good first issue" --repo "$REPO" --color D04135 --force

for f in glossary/*.md; do
  term="$(basename "$f" .md)"
  [ "$term" = "README" ] && continue
  gh issue create --repo "$REPO" \
    --title "Define: $term" \
    --label glossary --label "good first issue" \
    --body "عدّل الملف \`$f\`: بدّل \`TODO\` بتعريف قصير لمصطلح **$term** بكلماتك، وأضف أمر أو مثال.

اكتب تعليق هنا إنك بتاخذها، وبعدين افتح PR وفي وصفه: \`Closes #<رقم هذي الـIssue>\`"
  sleep 1
done

echo "✅ Done"
