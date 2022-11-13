-- добавим данные в таблицу model
INSERT IGNORE INTO tasks(id_tasks, name_tasks, descriptions, application)
VALUES 
	(1, 'Regression', "It differs in that a 
    valid answer is a real number or a numeric vector",  "In problems of prediction of continuous quantities" ),
    (2, "Classification", "It differs in that the set of acceptable answers is finite", "In discrete problems where it is necessary to relate an object to a class"  ),
    (3, "Forecasting", "It differs in that the objects are segments of time series that end at the moment when it is necessary to make a forecast for the future", 
    "It is used in tasks where the value depends on time"),
    (4, "Learning to rank", "It differs in that the answers must be obtained immediately on a variety of objects, and then sort them by the values of the answers.", 
    "it differs in that the answers must be obtained immediately on a variety of objects, and then sort them by the values of the answers.");
    
    
    INSERT IGNORE INTO parameteres(amount_param, name_param, optimal_param)
    VALUES
    (21, "loss='hinge',  penalty='l2', alpha=0.0001, l1_ratio=0.15, fit_intercept=True, max_iter=1000, 
    tol=0.001, shuffle=True, verbose=0, epsilon=0.1, n_jobs=None, random_state=None, learning_rate='optimal', 
    eta0=0.0, power_t=0.5, early_stopping=False, validation_fraction=0.1, n_iter_no_change=5, 
    class_weight=None, warm_start=False, average=False", "max_iter, alpha, l1_ratio, epsilon"),
    
    (21, "loss='squared_error', learning_rate=0.1, n_estimators=100, subsample=1.0, criterion='friedman_mse',
    min_samples_split=2, min_samples_leaf=1, min_weight_fraction_leaf=0.0, max_depth=3, 
    min_impurity_decrease=0.0, init=None, random_state=None, max_features=None, alpha=0.9, 
    verbose=0, max_leaf_nodes=None, warm_start=False, validation_fraction=0.1, n_iter_no_change=None, 
    tol=0.0001, ccp_alpha=0.0", "learning_rate, n_estimators=100, max_iter, alpha, l1_ratio, epsilon"),
    
    (11, "alpha=1.0, *, fit_intercept=True, normalize='deprecated', precompute=False, copy_X=True, max_iter=1000, 
    tol=0.0001, warm_start=False, positive=False, random_state=None, selection='cyclic'", "alpha, max_iter"),
    
    (15, "penalty='l2', *, dual=False, tol=0.0001, C=1.0, fit_intercept=True, intercept_scaling=1, class_weight=None, 
    random_state=None, solver='lbfgs', max_iter=100, multi_class='auto', verbose=0, warm_start=False, n_jobs=None, 
    l1_ratio=None", "penalty, max_iter, multi_class");
    
    INSERT INTO documentation(id_document, name_library, url, end_version)
    VALUES
		(1, "scikit-learn", "scikit-learn.org", "1.1"),
        (2, "scikit-learn", "scikit-learn.org", "0.37"),
        (3, "scikit-learn", "scikit-learn.org", "0.1"),
        (4, "scikit-learn", "scikit-learn.org", "0.24");
    
    
    INSERT  INTO model(name_model, id_tasks, types_tasks, application, amount_parameter, complexity_algorithm, learning, id_document)
    VALUES
		("GradientBoostingClassifier", 2, "Multiclass and binary classification", "Used in tabular data", 21, "O(n)", "GPU, CPU", 1),
        ("GradientBoostingRegressor", 1, "In regression problems", "Used in tabular data", 21, "O(n)", "GPU, CPU", 2),
        ("linear_model.Lasso", 1, "In regression problems", "Used in tabular data", 11, "O(n^2)", "CPU", 3),
        ("linear_model.LogisticRegression", 2, "Multiclass and binary classification", "Used in tabular data", 15, "O(n)", "CPU", 4);
        
    