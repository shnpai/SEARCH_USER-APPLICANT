<?php  
require_once 'core/models.php'; 
require_once 'core/handleForms.php'; 

if (!isset($_SESSION['username'])) {
	header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style.css">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>

<body>
	<?php if (isset($_SESSION['message'])) { ?>
	<h1 class="message error"><?php echo $_SESSION['message']; ?></h1>
	<?php } unset($_SESSION['message']); ?>

	<div class="greeting">
		<h1>Greetings, <?php echo $_SESSION['username']; ?>! Welcome to PsychCareers, where talented minds meet impactful opportunities. Showcase your expertise and connect with roles that shape lives and communities.</h1>
		<h3><a href="core/handleForms.php?logoutUserBtn=1">Logout</a></h3>
	</div>

	<?php if (isset($_SESSION['message'])) { ?>
		<h1 class="message success"><?php echo $_SESSION['message']; ?></h1>
	<?php } unset($_SESSION['message']); ?>

	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="GET" class="search-form">
		<input type="text" name="searchInput" placeholder="Search here" class="search-input">
		<input type="submit" name="searchBtn" value="Search" class="search-btn">
	</form>

	<p><a href="index.php">Clear Search Query</a></p>
	<p><a href="insert.php">Insert New Applicant</a></p>

	<table class="applicant-table">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>License Number</th>
			<th>License Type</th>
			<th>Position Applied</th>
			<th>Specialization</th>
			<th>Date Added</th>
			<th>Action</th>
		</tr>

		<?php if (!isset($_GET['searchBtn'])) { ?>
			<?php $getAllApplicants = getAllApplicants($pdo); ?>
				<?php foreach ($getAllApplicants as $row) { ?>
					<tr>
						<td><?php echo $row['first_name']; ?></td>
						<td><?php echo $row['last_name']; ?></td>
						<td><?php echo $row['email']; ?></td>
						<td><?php echo $row['gender']; ?></td>
						<td><?php echo $row['license_number']; ?></td>
						<td><?php echo $row['license_type']; ?></td>
						<td><?php echo $row['position_applied']; ?></td>
						<td><?php echo $row['specialization']; ?></td>
						<td><?php echo $row['date_added']; ?></td>
						<td>
							<a href="edit.php?id=<?php echo $row['id']; ?>">Edit</a>
							<a> | </a>
							<a href="delete.php?id=<?php echo $row['id']; ?>">Delete</a>
							<a> | </a>
							<a href="action.php?id=<?php echo $row['id']; ?>">Action Log</a>
						</td>
					</tr>
			<?php } ?>
			
		<?php } else { ?>
			<?php $searchForAnApplicant =  searchForAnApplicant($pdo, $_GET['searchInput']); ?>
				<?php foreach ($searchForAnApplicant as $row) { ?>
					<tr>
						<td><?php echo $row['first_name']; ?></td>
						<td><?php echo $row['last_name']; ?></td>
						<td><?php echo $row['email']; ?></td>
						<td><?php echo $row['gender']; ?></td>
						<td><?php echo $row['license_number']; ?></td>
						<td><?php echo $row['license_type']; ?></td>
						<td><?php echo $row['position_applied']; ?></td>
						<td><?php echo $row['specialization']; ?></td>
						<td><?php echo $row['date_added']; ?></td>
						<td>
							<a href="edit.php?id=<?php echo $row['id']; ?>">Edit</a>
							<a> | </a>
							<a href="delete.php?id=<?php echo $row['id']; ?>">Delete</a>
							<a> | </a>
							<a href="action.php?id=<?php echo $row['id']; ?>">Action Log</a>
						</td>
					</tr>
				<?php } ?>
		<?php } ?>	
	</table>
</body>
</html>
