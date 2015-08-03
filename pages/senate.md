---
layout: page
title: Senate
permalink: /senate/
---

## Senate

The Senate is responsible for the long-term planning and policy making of the Student Association (SA) as well as overseeing the daily execution of functional tasks of the Section Committees.

The Senate is also responsible for elections and for the budget of the SA.  Each year the Senate sets the Student Association fee and approves the SA-submitted budget and student-initiated programs.  Additionally, the Senate regularly solicits input on major initiatives to enhance the student life and wellbeing of HBS students. 

The Senate is composed of one Senator per HBS MBA Section, who is elected in the fall of the RC (first) year and serves a two-year term through graduation.

Senators serve within the general SA Senate (group of 20 Senators, including a Head Senator), and Senators also serve on various sub-committees.  These committees are tasked with engaging in different aspects of the MBA program to provide student leadership, facilitate student engagement and provide feedback for further improvement.

These committees include:

- Academics Committee
- Budget & Oversight Committee
- Class Day Committee
- Clubs Committee
- Elections Committee
- Housing Committee
- Services / Operations Committee
- Technology Committee
- More information about the Senate’s activities, including membership and meeting minutes, can be found within the materials posted on this page.

If you have any questions, please don’t hesitate to email the Senate at [Senate@hbs.edu](mailto:Senate@hbs.edu).

---

### EC Senators

<table class="responsive">
  <thead>
    <tr>
      <th></th>
      <th>Name</th>
      <th>Committees</th>
    </tr>
  </thead>
  <tbody>
    {% for senator in site.data.senate %}
      <tr>
        <td>Section {{ senator['section'] }}</td>
        <td><a href="mailto:{{senator['email']}}">{{ senator['name'] }}</a></td>
        <td>
          {% for c in senator['committees'] %}
            <div class="officer-item">{{ c }}</div>
          {% endfor %}
        </td>
      </tr>
    {% endfor %}
  </tbody>
</table>