<div dir="rtl">

# 🧪 git-practice — repo التدريب على Git و GitHub

هذا الـrepo مخصص للتطبيق العملي في ورشة Git و GitHub. لا تخاف تخرّب شي، الـrepo موجود عشان تجرّب فيه 🙂

## المهام

| # | المهمة | الأوامر / الأدوات |
|---|--------|-------------------|
| 1 | افتح Issue باسمك وعرّف بنفسك | GitHub → Issues → New issue |
| 2 | سوّ Fork للـrepo ثم Clone لجهازك | `git clone` |
| 3 | أنشئ فرع جديد | `git switch -c add-<username>` |
| 4 | أضف ملفك في مجلد `participants/` | انسخ `participants/_template.md` |
| 5 | احفظ التغيير وارفعه | `git add` ← `git commit` ← `git push` |
| 6 | افتح Pull Request واربطه بالـIssue | اكتب `Closes #رقم_الـIssue` في الوصف |
| 7 | بعد الدمج، اسحب آخر التحديثات | `git pull upstream main` |
| ⭐ | مهمة إضافية: اختر Issue من نوع `glossary` وعرّف المصطلح | `glossary/` |

التفاصيل الكاملة لكل خطوة موجودة في المذكرة (PDF).

## قواعد بسيطة

- كل شخص يعدّل **ملفه هو فقط** داخل `participants/` (اسم الملف = اسم المستخدم في GitHub، مثل `Almutairi0.md`).
- لا تعدّل ملفات غيرك، عشان ما يصير تعارض (conflict).
- رسالة الـcommit تكون واضحة، مثل: `Add Almutairi0 to participants`.
- فيه فحص تلقائي (GitHub Actions) يتأكد إن ملفك في المكان الصحيح. لو طلع ❌ اقرأ الرسالة وصلّح.

## هيكل الـrepo

```
git-practice/
├── participants/      ← هنا تضيف ملفك
│   ├── _template.md   ← انسخ هذا القالب
│   └── octocat.md     ← مثال
├── glossary/          ← مصطلحات تحتاج تعريف (المهمة الإضافية)
└── .github/           ← قوالب الـIssues والـPR والفحص التلقائي
```

</div>
