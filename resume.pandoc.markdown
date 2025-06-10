# $name$

**Location:** $location$  
**Email:** $email$  
**Phone:** $phone$  
$if(linkedin)$**LinkedIn:** linkedin.com/in/bearjcc  $endif$
$if(github)$**GitHub:** github.com/bearjcc  $endif$

---

$if(summary)$
## Professional Summary

$summary$

$endif$
$if(key_accomplishments)$
## Key Accomplishments

$for(key_accomplishments)$
- **$key_accomplishments.title$**
$for(key_accomplishments.description)$
  - $key_accomplishments.description$
$endfor$

$endfor$
$endif$
$if(skills)$
## Skills

$for(skills)$
**$skills.category$:** $for(skills.items)$$skills.items$$sep$, $endfor$

$endfor$
$endif$
$if(certifications)$
## Certifications

$for(certifications)$
**$certifications.category$:** $for(certifications.items)$$certifications.items$$sep$, $endfor$

$endfor$
$endif$
$if(education)$
## Education

$for(education)$
**$education.coursework$**  
*$education.institution$* — $education.year$

$endfor$
$endif$
$if(leadership_awards)$
## Leadership & Awards

$for(leadership_awards)$
**$leadership_awards.title$** — $leadership_awards.date$  
$for(leadership_awards.description)$
- $leadership_awards.description$
$endfor$

$endfor$
$endif$
$if(experience)$
## Professional Experience

$for(experience)$
### $experience.title$
**$experience.company$** — $experience.location$  
*$experience.dates$*

$if(experience.description)$
$experience.description$

$endif$
$if(experience.key_responsibility)$
$for(experience.key_responsibility)$
- $experience.key_responsibility$
$endfor$

$endif$
$endfor$
$endif$
$if(references)$
## References

$references$
$endif$ 