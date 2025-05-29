# $name$

**Location:** $location$  
**Email:** $email$  
**Phone:** $phone$  
$if(linkedin)$**LinkedIn:** $linkedin$  $endif$
$if(github)$**GitHub:** $github$  $endif$

---

$if(summary)$
## Professional Summary

$summary$

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
**$education.degree$**  
*$education.institution$* — $education.year$

$endfor$
$endif$
$if(honors)$
## Honors

$for(honors)$
**$honors.title$** — $honors.date$

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
$if(experience.achievements)$
$for(experience.achievements)$
- $experience.achievements$
$endfor$

$endif$
$endfor$
$endif$
$if(references)$
## References

$references$
$endif$ 