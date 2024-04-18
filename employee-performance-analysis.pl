% Define employees
employee(john).
employee(sarah).
employee(michael).
% Define performance metrics
performance_metric(productivity).
performance_metric(quality).
performance_metric(punctuality).
performance_metric(teamwork).

% Define rules for evaluating performance
evaluate_performance(john, high) :-
    achieved_metric(john, productivity, high),
    achieved_metric(john, quality, high),
    achieved_metric(john, punctuality, high),
    achieved_metric(john, teamwork, high).

evaluate_performance(sarah, medium) :-
    achieved_metric(sarah, productivity, high),
    achieved_metric(sarah, quality, medium),
    achieved_metric(sarah, punctuality, high),
    achieved_metric(sarah, teamwork, medium).

evaluate_performance(michael, low) :-
    achieved_metric(michael, productivity, low),
    achieved_metric(michael, quality, low),
    achieved_metric(michael, punctuality, medium),
    achieved_metric(michael, teamwork, low).

% Define metrics achieved by employees
achieved_metric(john, productivity, high).
achieved_metric(john, quality, high).
achieved_metric(john, punctuality, high).
achieved_metric(john, teamwork, high).

achieved_metric(sarah, productivity, high).
achieved_metric(sarah, quality, medium).
achieved_metric(sarah, punctuality, high).
achieved_metric(sarah, teamwork, medium).

achieved_metric(michael, productivity, low).
achieved_metric(michael, quality, low).
achieved_metric(michael, punctuality, medium).
achieved_metric(michael, teamwork, low).

% Define suggestions for performance improvement
improvement_suggestion(high, 'Continue maintaining high standards in all aspects of work.').
improvement_suggestion(medium, 'Focus on improving quality and teamwork skills.').
improvement_suggestion(low, 'Work on increasing productivity and improving quality of work.').


consult_performance_system :-
    write('Enter employee name: '), nl,
    read(Employee),
    evaluate_performance(Employee, Performance),
    write('Performance of '), write(Employee), write(' is '), write(Performance), nl,
    improvement_suggestion(Performance, Suggestion),
    write('Suggestion for improvement: '), write(Suggestion), nl.
