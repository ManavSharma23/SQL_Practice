select * from Agents as A INNER JOIN Maps as B on a.Best_map=B.Map_Id;


select name,role,vct_pick_rate,best_map from Agents as A INNER JOIN Maps as B on a.Best_map=B.Map_Id where best_map="MP1005 ";



select * from Agents as A left JOIN Maps as B on a.Best_map=B.Map_Id;

select * from Agents as A cross JOIN Maps ;

-- in cross join , cartesian is done 