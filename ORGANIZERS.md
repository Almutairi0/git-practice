<div dir="rtl">

# 🛠️ للمنظّمين: تجهيز الـrepo قبل الورشة

1. أنشئ repo **عام (Public)** باسم `git-practice` داخل حساب المنظمة (بدون README).
2. ارفع هذا المجلد:

```bash
git remote add origin https://github.com/FAB-LAB-HAIL/git-practice.git
git push -u origin main
```

3. أنشئ الـlabels وIssues المصطلحات (يحتاج `gh auth login`):

```bash
chmod +x scripts/setup-issues.sh
./scripts/setup-issues.sh FAB-LAB-HAIL/git-practice
```

4. من **Settings → Actions → General**: خلّ خيار
   *Require approval for first-time contributors* على الوضع اللي يناسبكم
   (لو مفعّل، لازم توافق على تشغيل الفحص لكل مشارك جديد).
5. (اختياري) **Settings → Branches**: أضف حماية لفرع `main` تمنع الدفع المباشر وتطلب PR.

## أثناء الورشة

- ادمج الـPRs أول بأول (Squash and merge) عشان المشاركين يشوفون أسماء بعض لما يسوون `git pull`.
- لو أحد عدّل ملف غيره أو القالب، اطلب منه تعديل (Request changes) بدل الرفض. تجربة المراجعة جزء من التعلّم.

## بعد الورشة: لإعادة استخدام الـrepo

احذف ملفات المشاركين (ما عدا `_template.md` و`octocat.md`) وأرجع ملفات `glossary/` لـ`TODO`.

</div>
