CREATE TABLE voterhistory (
votinghistoryid int primary key,
voterid int REFERENCES eligiblevoters (voterid),
election_date date,
vote_code text
)
