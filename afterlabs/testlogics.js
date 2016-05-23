$(document).ready(function() {
    $('td.answer').click(function () {
        $(this).find('input:radio').attr('checked', true);
        $(this).parent('.question').css('background', '#E3EB6B');
    });

    $(function () {
        $('#testapp').submit(function (e) {
            e.preventDefault();
            $('#info').html("");
            if ($('input[type=radio]:checked').length * 5 == $('input[type=radio]').length) {
                var result = calculateResults();
                var build = buildReport(result);
                if (build.success) {
                    $('html, body').animate({
                        scrollTop: $("#container").offset().top
                    }, 1250);
                }
            } else {
                $('#info').html('Необходимо ответить на все вопросы анкеты!');
            }
        });
    });

    function calculateResults() {
        var groups = {
            professional: [
                        'q1', 'q9', 'q17', 'q25', 'q33'],
            organizator: [
                        'q2', 'q10', 'q18', 'q26', 'q34'],
            independance: [
                        'q3', 'q11', 'q19', 'q27', 'q35'],
            servant: [
                        'q4', 'q12', 'q20', 'q28', 'q36'],
            challenge: [
                        'q5', 'q13', 'q21', 'q29', 'q37'],
            boss_creativity: [
                        'q6', 'q14', 'q22', 'q30', 'q38'],
            work_stability: [
                        'q7', 'q15', 'q39'],
            home_stability: [
                        'q23', 'q31', 'q40'],
            lifestyle_integration: [
                        'q8', 'q16', 'q24', 'q32']
        };

        var result = {
            professional: 0,
            organizator: 0,
            independance: 0,
            servant: 0,
            challenge: 0,
            boss_creativity: 0,
            work_stability: 0,
            home_stability: 0,
            lifestyle_integration: 0
        };

        $.each(groups, function (gi, group) {
            $.each(group, function (qi, question) {
                result[gi] += parseInt($('input[name=' + question + ']:checked', '#testapp').val());
            });
        });

        return result;
    }

    function buildReport(result) {
        var barchart;
        var piechart;
        $(function () {
            barchart = new window.Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                },
                title: {
                    text: 'Карьерные ориентации'
                },
                subtitle: {
                    text: 'Результаты'
                },
                xAxis: {
                    categories: [
                        'Профессиональная компетентность',
                        'Организаторская компетентность',
                        'Автономия',
                        'Служение',
                        'Вызов',
                        'Предпринимательская креативность',
                        'Стабильность места работы',
                        'Стабильность места жительства',
                        'Интеграция стилей жизни'
                    ]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Баллы'
                    }
                },
                legend: {
                    layout: 'vertical',
                    backgroundColor: '#FFFFFF',
                    align: 'left',
                    verticalAlign: 'top',
                    x: 100,
                    y: 70,
                    floating: true,
                    shadow: true
                },
                tooltip: {
                    formatter: function () {
                        return '' + this.x + ': ' + '<b>' + this.y + '</b>';
                    }
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: $('input[id=username]').val() + ' ' + $('select[id=age]').val(),
                    type: 'column',
                    data: [
                            result.professional,
                            result.organizator,
                            result.independance,
                            result.servant,
                            result.challenge,
                            result.boss_creativity,
                            result.work_stability,
                            result.home_stability,
                            result.lifestyle_integration
                        ]
                }]
            });

            piechart = new window.Highcharts.Chart({
                chart: {
                    renderTo: 'piecontainer',
                },
                title: {
                    text: 'Диаграмма'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage}%</b>',
                    percentageDecimals: 2
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            formatter: function () {
                                return '<b>' + this.point.name + '</b>: ' + window.Highcharts.numberFormat(this.percentage, 2) + ' %';
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Ориентация',
                    data: [
                            ['Вертикальная карьера',
                                result.organizator + result.challenge + result.boss_creativity],
                            ['Горизонтальная карьера',
                                result.professional + result.servant + result.home_stability],
                            ['Ориентация на условия',
                                result.independance + result.work_stability + result.lifestyle_integration]
                        ]
                }]
            });
        });
        return { success: true };
    }
});
